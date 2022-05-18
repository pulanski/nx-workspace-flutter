module.exports = {
  disableEmoji: false,
  format: '{type}{scope}: {emoji}{subject}',
  list: [
    'chore',
    'test',
    'feat',
    'fix',
    'docs',
    'refactor',
    'style',
    'ci',
    'perf',
  ],
  maxMessageLength: 64,
  minMessageLength: 3,
  questions: [
    'type',
    'scope',
    'subject',
    'body',
    'breaking',
    'issues',
    'lerna',
  ],
  scopes: ['repo', 'app', 'library', 'component', 'plugin', 'utils'],
  types: {
    chore: {
      description: 'Build process or auxiliary tool changes',
      emoji: '🛠',
      value: 'chore',
    },
    test: {
      description: 'Adding missing tests',
      emoji: '🧪',
      value: 'test',
    },
    feat: {
      description: 'A new feature',
      emoji: '✨',
      value: 'feat',
    },
    fix: {
      description: 'A bug fix',
      emoji: '🐛',
      value: 'fix',
    },
    docs: {
      description: 'Documentation only changes',
      emoji: '✏️',
      value: 'docs',
    },
    refactor: {
      description: 'A code change that neither fixes a bug or adds a feature',
      emoji: '♻️',
      value: 'refactor',
    },
    style: {
      description: 'Markup, white-space, formatting, missing semi-colons...',
      emoji: '💄',
      value: 'style',
    },
    ci: {
      description: 'CI related changes',
      emoji: '🎡',
      value: 'ci',
    },
    perf: {
      description: 'A code change that improves performance',
      emoji: '🏎️',
      value: 'perf',
    },
  },
};
