import React from 'react'
import { DocsThemeConfig } from 'nextra-theme-docs';
import Timestamp from './components/timestamp';

const config: DocsThemeConfig = {
  logo: <span>Spark2</span>,
  project: {
    link: 'https://github.com/shubham-0819/mind-archive',
  },
  chat: {
    link: 'https://discord.com',
  },
  search: {},
  banner: {
    dismissible: true,
    key: 'banner-active-development',
    text: (
      <div>
        <strong>Spark2</strong> is in active development.
      </div>
    ),
  },
  sidebar: {
    toggleButton: true,
  },
  toc: {
    float: true,
  },
  navigation: {
    prev: true,
    next: true,
  },
  docsRepositoryBase: 'https://github.com/shubham-0819/mind-archive',
  footer: {
    
    text: 'MIT License © 2024',
  },
}

export default config
