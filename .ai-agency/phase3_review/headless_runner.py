#!/usr/bin/env python3
import os
import sys
import json
import urllib.request
import urllib.error

def main():
    if len(sys.argv) < 2:
        print("❌ Error: Missing active input diff stream context payload.", file=sys.stderr)
        sys.exit(1)
        
    diff_file = sys.argv[1]
    if not os.path.exists(diff_file):
        print(f"❌ Error: Path file not found: {diff_file}", file=sys.stderr)
        sys.exit(1)
        
    with open(diff_file, 'r', encoding='utf-8') as f:
        git_diff_content = f.read()
        
    api_key = os.getenv("GENAI_API_KEY")
    raw_endpoint = os.getenv("GENAI_API_ENDPOINT", "https://openai.com")
    target_model = os.getenv("GENAI_TARGET_MODEL", "gpt-4o")
    
    if not api_key:
        print("❌ Error: Missing GENAI_API_KEY environment declaration variable.", file=sys.stderr)
        sys.exit(1)
        
    system_message = (
        "You are the Gatekeeper for an multi-persona AI software engineering agency. "
        "Run a comprehensive /review based on the provided git diff payload. "
        "Consolidate verdicts for BA, PM, UX, Architect, Scrum Master, Developer,Database Engineer, QA, and DevOps. "
        "End with exactly: SAFE TO MERGE: [YES/NO/CONDITIONAL]"
    )
    
    payload = {
        "model": target_model,
        "messages": [
            {"role": "system", "content": system_message},
            {"role": "user", "content": f"Review this active git diff stream and print the consensus matrix audit report:\n\n{git_diff_content}"}
        ],
        "temperature": 0.2
    }
    
    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {api_key}"
    }
    
    req = urllib.request.Request(
        raw_endpoint, 
        data=json.dumps(payload).encode('utf-8'), 
        headers=headers, 
        method='POST'
    )
    
    try:
        with urllib.request.urlopen(req) as response:
            res_body = response.read().decode('utf-8')
            res_json = json.loads(res_body)
            print(res_json['choices'][0]['message']['content'])
    except urllib.error.HTTPError as e:
        print(f"❌ API Transport Exception Protocol Error: {e.read().decode('utf-8')}", file=sys.stderr)
        sys.exit(1)
    except Exception as e:
        print(f"❌ Pipeline Execution Halted: {str(e)}", file=sys.stderr)
        sys.exit(1)

if __name__ == '__main__':
    main()

