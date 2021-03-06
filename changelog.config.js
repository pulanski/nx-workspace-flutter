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
      emoji: '๐ ',
      value: 'chore',
    },
    test: {
      description: 'Adding missing tests',
      emoji: '๐งช',
      value: 'test',
    },
    feat: {
      description: 'A new feature',
      emoji: 'โจ',
      value: 'feat',
    },
    fix: {
      description: 'A bug fix',
      emoji: '๐',
      value: 'fix',
    },
    docs: {
      description: 'Documentation only changes',
      emoji: 'โ๏ธ',
      value: 'docs',
    },
    refactor: {
      description: 'A code change that neither fixes a bug or adds a feature',
      emoji: 'โป๏ธ',
      value: 'refactor',
    },
    style: {
      description: 'Markup, white-space, formatting, missing semi-colons...',
      emoji: '๐',
      value: 'style',
    },
    ci: {
      description: 'CI related changes',
      emoji: '๐ก',
      value: 'ci',
    },
    perf: {
      description: 'A code change that improves performance',
      emoji: '๐๏ธ',
      value: 'perf',
    },
  },
};
