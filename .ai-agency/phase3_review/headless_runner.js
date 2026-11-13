const fs = require('fs');
const https = require('https');
const http = require('http');

const diffFile = process.argv[2];
if (!diffFile || !fs.existsSync(diffFile)) {
  console.error("❌ Error: Missing active input diff stream context payload.");
  process.exit(1);
}

const gitDiffContent = fs.readFileSync(diffFile, 'utf8');

// Read universal enterprise environment injections
const apiKey = process.env.GENAI_API_KEY;
const rawEndpoint = process.env.GENAI_API_ENDPOINT || 'https://openai.com';
const targetModel = process.env.GENAI_TARGET_MODEL || 'gpt-4o';

if (!apiKey) {
  console.error("❌ Error: Missing GENAI_API_KEY pipeline variable.");
  process.exit(1);
}

const url = new URL(rawEndpoint);

const systemMessage = "You are the Gatekeeper for an 8-persona AI software engineering agency. Run a comprehensive /review based on the provided git diff payload. Consolidate verdicts for BA, PM, UX, Architect, Scrum Master, Developer, QA, and DevOps. End with exactly: SAFE TO MERGE: [YES/NO/CONDITIONAL]";

const data = JSON.stringify({
  model: targetModel,
  messages: [
    { role: "system", content: systemMessage },
    { role: "user", content: `Review this active git diff stream and print the consensus matrix audit report:\n\n${gitDiffContent}` }
  ],
  temperature: 0.2
});

const options = {
  hostname: url.hostname,
  port: url.port || (url.protocol === 'https:' ? 443 : 80),
  path: url.pathname + url.search,
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${apiKey}`,
    'Content-Length': Buffer.byteLength(data)
  }
};

const client = url.protocol === 'https:' ? https : http;

const req = client.request(options, (res) => {
  let body = '';
  res.on('data', (chunk) => body += chunk);
  res.on('end', () => {
    try {
      const responseJson = JSON.parse(body);
      if (responseJson.choices && responseJson.choices[0]) {
        console.log(responseJson.choices[0].message.content);
      } else {
        console.error("❌ API Response Structural Error:", body);
        process.exit(1);
      }
    } catch (e) {
      console.error("❌ Evaluation Execution Interrupted Failure Parsing Payload:", e);
      process.exit(1);
    }
  });
});

req.on('error', (e) => {
  console.error("❌ System Transport Link Exception Blocked:", e);
  process.exit(1);
});

req.write(data);
req.end();

