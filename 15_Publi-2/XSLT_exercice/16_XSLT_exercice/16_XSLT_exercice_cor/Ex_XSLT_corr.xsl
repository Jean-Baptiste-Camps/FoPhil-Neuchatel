<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:output method="xhtml" indent="yes"/>
    
    <xsl:template match="/">
            <html>
                <head>
                    <title>Document</title>
                    <meta charset="UTF-8"/>
                    <style>
                        body    {background-color: coral;
                                    margin:50px;}
                        img     {display: block;
                                    margin-left: auto;
                                    margin-right: auto }
                        .titre   {font-style: italic;}
                        .nom    {font-variant: small-caps;}
                        footer  {
                                text-align:right;}
                    </style>
                </head>
                <body>
                    <h1>Un must read</h1>
                    <img src="tei.jpg"/>
                    <ul>
                        <xsl:apply-templates/>
                    </ul>
                    <footer>Exercice XSLT de la formation FoPhil</footer>
                </body>
            </html>
        
        
    </xsl:template>
    
    <xsl:template match="auteur">
        <li>
            <b>
                <span class="nom">
                    <xsl:apply-templates/>
                </span>
            </b>
        </li>
    </xsl:template>
    
    <xsl:template match="titre">
        <li>
            <span class="titre">
                <xsl:apply-templates/>
            </span>
        </li>
    </xsl:template>
    <xsl:template match="traducteur">
        <li>
            <span class="nom">
                <xsl:apply-templates/>
            </span>
        </li>
    </xsl:template>
    
    <xsl:template match="nom[ancestor::traducteur]">
        <xsl:apply-templates/>,
    </xsl:template>
    
    <xsl:template match="prénom[ancestor::traducteur]">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="lien">
        <li>
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    
    <xsl:template match="résumé">
        <li> Résumé:
            <xsl:apply-templates/>
        </li>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- À vous de jouer: définir un template
    pour l'éditeur et ses mentions,
    et rendre valide la sortie html !
    -->
    
</xsl:stylesheet>