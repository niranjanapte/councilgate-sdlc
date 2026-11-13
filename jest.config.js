/** @type {import('jest').Config} */
const config = {
  preset: 'ts-jest',
  testEnvironment: 'jsdom',
  verbose: true,
  collectCoverage: true,
  coverageDirectory: 'coverage',
  coverageReporters: ['text', 'lcov', 'json-summary'],
  // 🛡️ Root-Level Constraint: Explicitly target application paths, ignore framework docs
  collectCoverageFrom: [
    'frontend/src/**/*.{js,jsx,ts,tsx}', // Adjust 'frontend/' to match your folder name
    '!**/node_modules/**',
    '!**/.ai-agency/**',
    '!**/docs/**',
    '!**/*.d.ts',
  ],
  // Hardcoded QA Persona Test Gate Barriers
  coverageThreshold: {
    global: {
      statements: 85,
      branches: 80,
      functions: 85,
      lines: 85,
    },
  },
  transform: {
    '^.+\\.(ts|tsx)$': ['ts-jest', { tsconfig: 'tsconfig.json' }],
  },
};

module.exports = config;

