{ pkgs, lib, config, ... }:

with config.lib.stylix.colors.withHashtag;

{
  xdg.configFile.md-preview-css = {

    enable = true;
    #onChange = manually tell darkreader to refresh somehow?
    target = "markdown-preview/style.css";
    text = ''

      body { background-color: ${base00}; }

      .markdown-body ol ol,
      .markdown-body ul ol,
      .markdown-body ol ul,
      .markdown-body ul ul,
      .markdown-body ol ul ol,
      .markdown-body ul ul ol,
      .markdown-body ol ul ul,
      .markdown-body ul ul ul {
        margin-top: 0;
        margin-bottom: 0;
      }
      .markdown-body {
        font-family: "Helvetica Neue", Helvetica, "Segoe UI", Arial, freesans, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        font-size: 16px;
        color: ${base05};
        line-height: 1.6;
        word-wrap: break-word;
        padding: 45px;
        background: ${base00};
        border: 0px solid ${base05};
        -webkit-border-radius: 0 0 3px 3px;
        border-radius: 0 0 3px 3px;
      }
      .markdown-body > *:first-child {
        margin-top: 0 !important;
      }
      .markdown-body > *:last-child {
        margin-bottom: 0 !important;
      }
      .markdown-body .table-of-contents ol {
        list-style: none;
      }
      .markdown-body .table-of-contents > ol {
        padding-left: 0;
      }
      .markdown-body * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
      }
      .markdown-body h1,
      .markdown-body h2,
      .markdown-body h3,
      .markdown-body h4,
      .markdown-body h5,
      .markdown-body h6 {
        margin-top: 1em;
        margin-bottom: 16px;
        font-weight: bold;
        line-height: 1.4;
      }
      .markdown-body h1 .anchor,
      .markdown-body h2 .anchor,
      .markdown-body h3 .anchor,
      .markdown-body h4 .anchor,
      .markdown-body h5 .anchor,
      .markdown-body h6 .anchor {
        margin-left: -24px;
        visibility: hidden;
      }
      .markdown-body h1:hover .anchor,
      .markdown-body h2:hover .anchor,
      .markdown-body h3:hover .anchor,
      .markdown-body h4:hover .anchor,
      .markdown-body h5:hover .anchor,
      .markdown-body h6:hover .anchor {
        visibility: visible;
      }
      .markdown-body p,
      .markdown-body blockquote,
      .markdown-body ul,
      .markdown-body ol,
      .markdown-body dl,
      .markdown-body table,
      .markdown-body pre {
        margin-top: 0;
        margin-bottom: 16px;
        background-color: ${base00} !important; /* Changes background of code block */
      }
      .markdown-body h1 {
        margin: 0.67em 0;
        padding-bottom: 0.3em;
        font-size: 2.25em;
        line-height: 1.2;
        border-bottom: 1px solid ${base0D};
        color: ${base0A} !important;
      }
      .markdown-body h2 {
        padding-bottom: 0.3em;
        font-size: 1.75em;
        line-height: 1.225;
        border-bottom: 1px solid ${base0D};
        color: ${base04} !important;
      }
      .markdown-body h3 {
        font-size: 1.5em;
        line-height: 1.43;
      }
      .markdown-body h4 {
        font-size: 1.25em;
      }
      .markdown-body h5 {
        font-size: 1em;
      }
      .markdown-body h6 {
        font-size: 1em;
        color: ${base0F} !important;
      }
      .markdown-body hr {
        margin-top: 20px;
        margin-bottom: 20px;
        height: 0;
        border: 0;
        border-top: 1px solid ${base0D};
      }
      .markdown-body ol,
      .markdown-body ul {
        padding-left: 2em;
      }
      .markdown-body ol ol,
      .markdown-body ul ol {
        list-style-type: lower-roman;
      }
      .markdown-body ol ul,
      .markdown-body ul ul {
        list-style-type: circle;
      }
      .markdown-body ol ul ul,
      .markdown-body ul ul ul {
        list-style-type: square;
      }
      .markdown-body ol {
        list-style-type: decimal;
      }
      .markdown-body ul {
        list-style-type: disc;
        /* color: ${base0E} !important; */ /* changes color of all bullet lists */
      }
      li::marker {
        color: ${base0D} !important; /* changes color of bullet points */
      }
      .markdown-body dl {
        margin-bottom: 1.3em
      }
      .markdown-body dl dt {
        font-weight: 700;
      }
      .markdown-body dl dd {
        margin-left: 0;
      }
      .markdown-body dl dd p {
        margin-bottom: 0.8em;
      }
      .markdown-body blockquote {
        margin-left: 0;
        margin-right: 0;
        padding: 0 15px;
        color: ${base0F} !important;
        border-left: 4px solid ${base08} !important; /* border denoting block quote */
      }
      .markdown-body table {
        display: block;
        width: 100%;
        overflow: auto;
        word-break: normal;
        word-break: keep-all;
        border-collapse: collapse;
        border-spacing: 0;
      }
      .markdown-body table tr {
        background-color: ${base00} !important; /* Changes bacground color of tables */
        border-top: 1px solid ${base0D};
      }
      .markdown-body table tr:nth-child(2n) {
        background-color: #f8f8f8;
      }
      .markdown-body table th,
      .markdown-body table td {
        padding: 6px 13px;
        border: 1px solid ${base0D}; /* color of table cells/border */
      }
      .markdown-body pre {
        word-wrap: normal;
        padding: 16px;
        overflow: auto;
        font-size: 85%;
        line-height: 1.45;
        background-color: #f7f7f7;
        -webkit-border-radius: 3px;
        border-radius: 3px;
      }
      .markdown-body pre code {
        display: inline;
        max-width: initial;
        padding: 0;
        margin: 0;
        overflow: initial;
        font-size: 100%;
        line-height: inherit;
        word-wrap: normal;
        white-space: pre;
        -webkit-border-radius: 3px;
        border-radius: 3px;
        background-color: transparent;
      }
      .markdown-body pre code:before,
      .markdown-body pre code:after {
        content: normal;
      }
      .markdown-body code {
        font-family: Consolas, "Liberation Mono", Menlo, Courier, monospace;
        padding: 0;
        padding-top: 0.2em;
        padding-bottom: 0.2em;
        margin: 0;
        font-size: 85%;
        -webkit-border-radius: 3px;
        border-radius: 3px;
      }
      .markdown-body code:before,
      .markdown-body code:after {
        letter-spacing: -0.2em;
        content: "\00a0";
      }
      .markdown-body a {
        color: ${base09} !important; /* Change style of hyperlinks */
        text-decoration: underline;
        background: transparent;
      }
      .markdown-body img {
        max-width: 100%;
        max-height: 100%;
      }
      .markdown-body strong {
        font-weight: bold;
      }
      .markdown-body em {
        font-style: italic;
      }
      .markdown-body del {
        text-decoration: line-through;
      }
      .task-list-item {
        list-style-type: none;
      }
      .task-list-item input {
        font: 13px/1.4 Helvetica, arial, nimbussansl, liberationsans, freesans, clean, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        margin: 0 0.35em 0.25em -1.6em;
        vertical-align: middle;
      }
      .task-list-item input[disabled] {
        cursor: default;
      }
      .task-list-item input[type="checkbox"] {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 0;
      }
      .task-list-item input[type="radio"] {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 0;
      }


      /* Below are the page settings */

      #page-ctn {
        margin: 0 auto;
        max-width: 900px;
      }

      #page-header {
        padding: 8px;
        background-color: ${base00} !important;
        border-color: ${base05} !important;
        border-style: solid;
        border-width: 1px 1px 0;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
      }

      #page-header svg {
        display: inline-block;
        margin-right: 5px;
        overflow: hidden;
        fill: ${base05} !important;
      }

      #page-header h3 {
        display: flex;
        align-items: center;
        margin-top: 0;
        margin-bottom: 0;
        padding-right: 16px;
        font-size: 14px;
        font-weight: 600;
        color: ${base05} !important;


      }




      /* Highlight settings */

      .hljs {
        display: block;
        overflow-x: auto;
        padding: 0.5em;
        /* color: #333; */
        color: ${base0B} !important;
        background: ${base00} !important;
      }

      .hljs-comment,
      .hljs-quote {
        color: ${base0F} !important; /* color of comments */
        font-style: italic;
      }

      .hljs-keyword,
      .hljs-selector-tag,
      .hljs-subst {
        color: ${base0D} !important;
        font-weight: bold;
      }

      .hljs-number,
      .hljs-literal,
      .hljs-variable,
      .hljs-template-variable,
      .hljs-tag .hljs-attr {
        color: ${base0E} !important;
      }

      .hljs-string,
      .hljs-doctag {
        color: ${base01} !important;
      }

      .hljs-title,
      .hljs-section,
      .hljs-selector-id {
        color: ${base08} !important; /* Color of function title */ 
        font-weight: bold;
      }

      .hljs-subst {
        font-weight: normal;
      }

      .hljs-type,
      .hljs-class .hljs-title {
        color: ${base09} !important; /* Color of class title */ 
        font-weight: bold;
      }

      .hljs-tag,
      .hljs-name,
      .hljs-attribute {
        font-weight: normal;
        color: ${base0C} !important; /* Color of XML/HTML tags */
      }

      .hljs-regexp,
      .hljs-link {
        /* color: #009926; */
        color: ${base0E} !important; 
      }

      .hljs-symbol,
      .hljs-bullet {
        /* color: #990073; */
        color: ${base0B} !important; 
      }

      .hljs-built_in,
      .hljs-builtin-name {
        /* color: #0086b3; */
        color: ${base04} !important;
      }

      .hljs-meta {
        color: ${base0F} !important; /* Color of meta tags */
        font-weight: bold;
      }

      .hljs-deletion {
        background: ${base08};
      }

      .hljs-addition {
        background: ${base00};
      }

      .hljs-emphasis {
        font-style: italic;
      }

      .hljs-strong {
        font-weight: bold;
      }

      .katex-html {
        color: ${base0C};
      }

    '';
  };
}