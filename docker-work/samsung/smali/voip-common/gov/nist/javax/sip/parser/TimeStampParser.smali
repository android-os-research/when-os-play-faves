.class public Lgov/nist/javax/sip/parser/TimeStampParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "TimeStampParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 57
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeStamp"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 67
    sget-boolean v0, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    const-string v1, "TimeStampParser.parse"

    if-eqz v0, :cond_9

    .line 68
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_enter(Ljava/lang/String;)V

    .line 69
    :cond_9
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 71
    .local v0, "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    const/16 v2, 0x837

    :try_start_10
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/TimeStampParser;->headerName(I)V

    .line 73
    const-string v2, "Timestamp"

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/header/TimeStamp;->setHeaderName(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 76
    iget-object v2, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_df

    .line 80
    .local v2, "firstNumber":Ljava/lang/String;
    :try_start_23
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2a} :catch_d5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_23 .. :try_end_2a} :catch_cb
    .catchall {:try_start_23 .. :try_end_2a} :catchall_df

    const-string v5, "."

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_58

    .line 81
    :try_start_30
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 82
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "secondNumber":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 86
    .local v8, "ts":F
    invoke-virtual {v0, v8}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 87
    .end local v3    # "secondNumber":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "ts":F
    goto :goto_5f

    .line 88
    :cond_58
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 89
    .local v7, "ts":J
    invoke-virtual {v0, v7, v8}, Lgov/nist/javax/sip/header/TimeStamp;->setTime(J)V
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_5f} :catch_d5
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_30 .. :try_end_5f} :catch_cb
    .catchall {:try_start_30 .. :try_end_5f} :catchall_df

    .line 97
    .end local v7    # "ts":J
    :goto_5f
    nop

    .line 99
    :try_start_60
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->SPorHT()V

    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    const/16 v7, 0xa

    if-eq v3, v7, :cond_c3

    .line 101
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_df

    move-object v2, v3

    .line 105
    :try_start_76
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->lookAhead(I)C

    move-result v3

    if-ne v3, v6, :cond_a6

    .line 106
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3, v6}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 107
    iget-object v3, p0, Lgov/nist/javax/sip/parser/TimeStampParser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->number()Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3    # "secondNumber":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 111
    .local v5, "ts":F
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V

    .line 112
    .end local v3    # "secondNumber":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "ts":F
    goto :goto_ae

    .line 113
    :cond_a6
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, "ts":I
    int-to-float v4, v3

    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/header/TimeStamp;->setDelay(F)V
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_ae} :catch_b9
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_76 .. :try_end_ae} :catch_af
    .catchall {:try_start_76 .. :try_end_ae} :catchall_df

    .line 122
    .end local v3    # "ts":I
    :goto_ae
    goto :goto_c3

    .line 120
    :catch_af
    move-exception v3

    .line 121
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_b0
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    throw v4

    .line 118
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    :catch_b9
    move-exception v3

    .line 119
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    throw v4
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_df

    .line 126
    .end local v2    # "firstNumber":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    :cond_c3
    :goto_c3
    sget-boolean v2, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v2, :cond_ca

    .line 127
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 130
    :cond_ca
    return-object v0

    .line 95
    .restart local v2    # "firstNumber":Ljava/lang/String;
    :catch_cb
    move-exception v3

    .line 96
    .local v3, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_cc
    invoke-virtual {v3}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    throw v4

    .line 93
    .end local v3    # "ex":Ljavax/sip/InvalidArgumentException;
    .restart local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    :catch_d5
    move-exception v3

    .line 94
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/TimeStampParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    .end local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .end local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    throw v4
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_df

    .line 126
    .end local v2    # "firstNumber":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/TimeStampParser;
    :catchall_df
    move-exception v2

    sget-boolean v3, Lgov/nist/javax/sip/parser/TimeStampParser;->debug:Z

    if-eqz v3, :cond_e7

    .line 127
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/TimeStampParser;->dbg_leave(Ljava/lang/String;)V

    .line 128
    :cond_e7
    throw v2
.end method
