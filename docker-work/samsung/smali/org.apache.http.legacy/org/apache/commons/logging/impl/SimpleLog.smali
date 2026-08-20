.class public Lorg/apache/commons/logging/impl/SimpleLog;
.super Ljava/lang/Object;
.source "SimpleLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DEFAULT_DATE_TIME_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm:ss:SSS zzz"

.field public static final LOG_LEVEL_ALL:I = 0x0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_ERROR:I = 0x5

.field public static final LOG_LEVEL_FATAL:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_OFF:I = 0x7

.field public static final LOG_LEVEL_TRACE:I = 0x1

.field public static final LOG_LEVEL_WARN:I = 0x4

.field protected static dateFormatter:Ljava/text/DateFormat; = null

.field protected static dateTimeFormat:Ljava/lang/String; = null

.field protected static showDateTime:Z = false

.field protected static showLogName:Z = false

.field protected static showShortName:Z = false

.field protected static final simpleLogProps:Ljava/util/Properties;

.field protected static final systemPrefix:Ljava/lang/String; = "org.apache.commons.logging.simplelog."


# instance fields
.field protected currentLogLevel:I

.field protected logName:Ljava/lang/String;

.field private shortLogName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smgetContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    invoke-static {}, Lorg/apache/commons/logging/impl/SimpleLog;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 90
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    .line 97
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 102
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 104
    sput-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 106
    const-string v1, "yyyy/MM/dd HH:mm:ss:SSS zzz"

    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 108
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 159
    const-string v2, "simplelog.properties"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 160
    .local v2, "in":Ljava/io/InputStream;
    if-eqz v2, :cond_26

    .line 162
    :try_start_1e
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 163
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_25

    .line 166
    goto :goto_26

    .line 164
    :catch_25
    move-exception v0

    .line 169
    :cond_26
    :goto_26
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    const-string v3, "org.apache.commons.logging.simplelog.showlogname"

    invoke-static {v3, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    .line 170
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    const-string v3, "org.apache.commons.logging.simplelog.showShortLogname"

    invoke-static {v3, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    .line 171
    sget-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    const-string v3, "org.apache.commons.logging.simplelog.showdatetime"

    invoke-static {v3, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    .line 173
    if-eqz v0, :cond_66

    .line 174
    sget-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    const-string v3, "org.apache.commons.logging.simplelog.dateTimeFormat"

    invoke-static {v3, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 177
    :try_start_50
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_59} :catch_5a

    .line 182
    goto :goto_66

    .line 178
    :catch_5a
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    .line 181
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/apache/commons/logging/impl/SimpleLog;->dateTimeFormat:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_66
    :goto_66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    .line 211
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.apache.commons.logging.simplelog.log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "lvl":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 216
    .local v3, "i":I
    :goto_31
    const/4 v5, 0x0

    if-nez v1, :cond_59

    const/4 v6, -0x1

    if-le v3, v6, :cond_59

    .line 217
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_31

    .line 222
    :cond_59
    if-nez v1, :cond_61

    .line 223
    const-string v2, "org.apache.commons.logging.simplelog.defaultlog"

    invoke-static {v2}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_61
    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 227
    invoke-virtual {p0, v5}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 228
    :cond_6d
    const-string v2, "trace"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 230
    :cond_7a
    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 231
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 232
    :cond_87
    const-string v2, "info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 233
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 234
    :cond_93
    const-string v0, "warn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 235
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 236
    :cond_a0
    const-string v0, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 237
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 238
    :cond_ad
    const-string v0, "fatal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 239
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    goto :goto_c6

    .line 240
    :cond_ba
    const-string v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 241
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->setLevel(I)V

    .line 244
    :cond_c6
    :goto_c6
    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Z

    .line 150
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_8

    move v1, p1

    goto :goto_e

    :cond_8
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_e
    return v1
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 6

    .line 643
    const/4 v0, 0x0

    .line 645
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_38

    .line 648
    :try_start_3
    const-class v1, Ljava/lang/Thread;

    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_f} :catch_37

    .line 653
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_1c} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_1c} :catch_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_1c} :catch_37

    move-object v0, v2

    .line 683
    :goto_1d
    goto :goto_36

    .line 658
    :catch_1e
    move-exception v2

    .line 675
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-eqz v3, :cond_28

    goto :goto_36

    .line 680
    :cond_28
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Unexpected InvocationTargetException"

    .line 681
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_34} :catch_37

    .line 656
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_34
    move-exception v2

    goto :goto_1d

    .line 687
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_36
    goto :goto_38

    .line 684
    :catch_37
    move-exception v1

    .line 690
    :cond_38
    :goto_38
    if-nez v0, :cond_40

    .line 691
    const-class v1, Lorg/apache/commons/logging/impl/SimpleLog;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 695
    :cond_40
    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 700
    new-instance v0, Lorg/apache/commons/logging/impl/SimpleLog$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/SimpleLog$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "prop":Ljava/lang/String;
    :try_start_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 140
    goto :goto_8

    .line 138
    :catch_7
    move-exception v1

    .line 141
    :goto_8
    if-nez v0, :cond_11

    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->simpleLogProps:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    move-object v1, v0

    :goto_12
    return-object v1
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "dephault"    # Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lorg/apache/commons/logging/impl/SimpleLog;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method


# virtual methods
.method public final debug(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 377
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 379
    :cond_b
    return-void
.end method

.method public final debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 392
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 393
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 395
    :cond_a
    return-void
.end method

.method public final error(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 500
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 501
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 503
    :cond_b
    return-void
.end method

.method public final error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 516
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 517
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 519
    :cond_a
    return-void
.end method

.method public final fatal(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 531
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 532
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 534
    :cond_b
    return-void
.end method

.method public final fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 547
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 548
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 550
    :cond_a
    return-void
.end method

.method public getLevel()I
    .registers 2

    .line 266
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    return v0
.end method

.method public final info(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 438
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 439
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 441
    :cond_b
    return-void
.end method

.method public final info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 454
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 455
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 457
    :cond_a
    return-void
.end method

.method public final isDebugEnabled()Z
    .registers 2

    .line 562
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isErrorEnabled()Z
    .registers 2

    .line 575
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isFatalEnabled()Z
    .registers 2

    .line 588
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isInfoEnabled()Z
    .registers 2

    .line 601
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .registers 3
    .param p1, "logLevel"    # I

    .line 360
    iget v0, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isTraceEnabled()Z
    .registers 2

    .line 614
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isWarnEnabled()Z
    .registers 2

    .line 627
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v0, "buf":Ljava/lang/StringBuffer;
    sget-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showDateTime:Z

    if-eqz v1, :cond_1c

    .line 288
    sget-object v1, Lorg/apache/commons/logging/impl/SimpleLog;->dateFormatter:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_1c
    packed-switch p1, :pswitch_data_c2

    goto :goto_43

    .line 299
    :pswitch_20
    const-string v1, "[FATAL] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 298
    :pswitch_26
    const-string v1, "[ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 297
    :pswitch_2c
    const-string v1, "[WARN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 296
    :pswitch_32
    const-string v1, "[INFO] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 295
    :pswitch_38
    const-string v1, "[DEBUG] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 294
    :pswitch_3e
    const-string v1, "[TRACE] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    :goto_43
    sget-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showShortName:Z

    const-string v2, " - "

    if-eqz v1, :cond_7a

    .line 304
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    if-nez v1, :cond_6c

    .line 306
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 307
    nop

    .line 308
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    .line 310
    :cond_6c
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->shortLogName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8b

    .line 311
    :cond_7a
    sget-boolean v1, Lorg/apache/commons/logging/impl/SimpleLog;->showLogName:Z

    if-eqz v1, :cond_8b

    .line 312
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->logName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_8b
    :goto_8b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    if-eqz p3, :cond_be

    .line 320
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 325
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 326
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 327
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 328
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_be
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->write(Ljava/lang/StringBuffer;)V

    .line 334
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
    .end packed-switch
.end method

.method public setLevel(I)V
    .registers 2
    .param p1, "currentLogLevel"    # I

    .line 256
    iput p1, p0, Lorg/apache/commons/logging/impl/SimpleLog;->currentLogLevel:I

    .line 258
    return-void
.end method

.method public final trace(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 408
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 410
    :cond_b
    return-void
.end method

.method public final trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 424
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 426
    :cond_a
    return-void
.end method

.method public final warn(Ljava/lang/Object;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 469
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 472
    :cond_b
    return-void
.end method

.method public final warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 485
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SimpleLog;->isLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 486
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/logging/impl/SimpleLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 488
    :cond_a
    return-void
.end method

.method protected write(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 347
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    return-void
.end method
