<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:gesmes="http://www.gesmes.org/xml/2002-08-01" xmlns:ns1="http://www.ecb.int/vocabulary/2002-08-01/eurofxref" exclude-result-prefixes="gesmes ns1">

        <!-- Next 3 variables must be properly set up before importing the result file to QAD -->
        <xsl:variable name="currencies" select="'USD, GBP'"/>
        <xsl:variable name="userid" select="'mfgdemo'"/>
        <xsl:variable name="companycode" select="'SL'"/>

        <!-- please note that default ExchangeRateTypeCode is "ACCOUNTING"     -->
        <!-- please note that default FromCurrencyCode is "EUR"                -->

        <xsl:template match="/">
                <BExchangeRate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
                        <tContextInfo>
                                <tcCompanyCode>
                                        <xsl:value-of select="$companycode"/>
                                </tcCompanyCode>
                                <tcAction/>
                                <tiPriority>0</tiPriority>
                                <ttRequestStartDate xsi:nil="true"/>
                                <tiRequestStartTime>0</tiRequestStartTime>
                                <tcComment/>
                                <tcCBFVersion>9.2</tcCBFVersion>
                                <tcComponentVersion/>
                                <tcActivityCode/>
                                <tlPartialUpdate>false</tlPartialUpdate>
                                <tcPartialUpdateExceptionList/>
                        </tContextInfo>
                        <xsl:for-each select="gesmes:Envelope/ns1:Cube/ns1:Cube/ns1:Cube">
                                <xsl:if test="contains($currencies,@currency)">
                                        <tExchangeRate>
                                                <ExchangeRateValidDateFrom>
                                                        <xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>
                                                </ExchangeRateValidDateFrom>
                                                <ExchangeRateValidDateTill>
                                                        <xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>
                                                </ExchangeRateValidDateTill>
                                                <ExchangeRate>
                                                        <xsl:value-of select="@rate"/>
                                                </ExchangeRate>
                                                <ExchangeRateScale>1</ExchangeRateScale>
                                                <tcExchangeRateTypeCode>ACCOUNTING</tcExchangeRateTypeCode>
                                                <tcFromCurrencyCode>EUR</tcFromCurrencyCode>
                                                <tcToCurrencyCode>
                                                        <xsl:value-of select="@currency"/>
                                                </tcToCurrencyCode>
                                                <LastModifiedDate>
                                                        <xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>
                                                </LastModifiedDate>
                                                <LastModifiedTime>
                                                        <xsl:value-of select="hours-from-time(current-time()) * 3600 + minutes-from-time(current-time()) * 60"/>
                                                </LastModifiedTime>
                                                <LastModifiedUser>
                                                        <xsl:value-of select="$userid"/>
                                                </LastModifiedUser>
                                                <QADC01/>
                                                <QADC02/>
                                                <QADT01 xsi:nil="true"/>
                                                <QADD01>0.0000000000</QADD01>
                                                <tc_Rowid>
                                                        <xsl:value-of select="position()"/>
                                                </tc_Rowid>
                                                <tc_ParentRowid/>
                                        </tExchangeRate>
                                </xsl:if>
                        </xsl:for-each>
                </BExchangeRate>
        </xsl:template>
</xsl:stylesheet>
