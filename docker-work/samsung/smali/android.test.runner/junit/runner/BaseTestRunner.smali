.class public abstract Ljunit/runner/BaseTestRunner;
.super Ljava/lang/Object;
.source "BaseTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# static fields
.field public static final SUITE_METHODNAME:Ljava/lang/String; = "suite"

.field private static fPreferences:Ljava/util/Properties;

.field static fgFilterStack:Z

.field static fgMaxMessageLength:I


# instance fields
.field fLoading:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const/16 v0, 0x1f4

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    .line 339
    const-string v1, "maxmessage"

    invoke-static {v1, v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 340
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    return-void
.end method

.method static filterLine(Ljava/lang/String;)Z
    .registers 9
    .param p0, "line"    # Ljava/lang/String;

    .line 321
    const-string v0, "junit.framework.TestCase"

    const-string v1, "junit.framework.TestResult"

    const-string v2, "junit.framework.TestSuite"

    const-string v3, "junit.framework.Assert."

    const-string v4, "junit.swingui.TestRunner"

    const-string v5, "junit.awtui.TestRunner"

    const-string v6, "junit.textui.TestRunner"

    const-string v7, "java.lang.reflect.Method.invoke("

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "patterns":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 332
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_22

    .line 333
    const/4 v2, 0x1

    return v2

    .line 331
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 335
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method public static getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "stack"    # Ljava/lang/String;

    .line 293
    invoke-static {}, Ljunit/runner/BaseTestRunner;->showStackRaw()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    return-object p0

    .line 296
    :cond_7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 297
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 298
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, "sr":Ljava/io/StringReader;
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x3e8

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 306
    .local v3, "br":Ljava/io/BufferedReader;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_2e

    .line 307
    invoke-static {v5}, Ljunit/runner/BaseTestRunner;->filterLine(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 308
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_34

    goto :goto_1d

    .line 312
    :cond_2e
    nop

    .line 313
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 310
    .end local v5    # "line":Ljava/lang/String;
    :catch_34
    move-exception v4

    .line 311
    .local v4, "IOException":Ljava/lang/Exception;
    return-object p0
.end method

.method public static getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 273
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 274
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 275
    .local v1, "writer":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 277
    .local v2, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "trace":Ljava/lang/String;
    invoke-static {v3}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPreference(Ljava/lang/String;I)I
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dflt"    # I

    .line 258
    invoke-static {p0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "value":Ljava/lang/String;
    move v1, p1

    .line 260
    .local v1, "intValue":I
    if-nez v0, :cond_8

    .line 261
    return v1

    .line 263
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_e

    move v1, v2

    .line 265
    goto :goto_f

    .line 264
    :catch_e
    move-exception v2

    .line 266
    :goto_f
    return v1
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 254
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPreferences()Ljava/util/Properties;
    .registers 3

    .line 47
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    if-nez v0, :cond_1c

    .line 48
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 49
    const-string v1, "loading"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "filterstack"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Ljunit/runner/BaseTestRunner;->readPreferences()V

    .line 53
    :cond_1c
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    return-object v0
.end method

.method private static getPreferencesFile()Ljava/io/File;
    .registers 3

    .line 234
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "home":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "junit.properties"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static inVAJava()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method private static readPreferences()V
    .registers 3

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 242
    new-instance v1, Ljava/util/Properties;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->setPreferences(Ljava/util/Properties;)V

    .line 243
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_1f

    .line 250
    goto :goto_29

    .line 244
    :catch_1f
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_28

    .line 247
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_28

    .line 248
    :catch_26
    move-exception v2

    goto :goto_29

    .line 249
    :cond_28
    :goto_28
    nop

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :goto_29
    return-void
.end method

.method public static savePreferences()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 59
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_17

    .line 61
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 62
    nop

    .line 63
    return-void

    .line 61
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 62
    throw v1
.end method

.method protected static setPreferences(Ljava/util/Properties;)V
    .registers 1
    .param p0, "preferences"    # Ljava/util/Properties;

    .line 43
    sput-object p0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 44
    return-void
.end method

.method protected static showStackRaw()Z
    .registers 2

    .line 317
    const-string v0, "filterstack"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 193
    sget v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    if-le v0, v1, :cond_27

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sget v2, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    :cond_27
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 75
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 76
    monitor-exit p0

    return-void

    .line 74
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "t":Ljava/lang/Throwable;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .registers 4
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    monitor-enter p0

    .line 79
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 80
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "t":Ljunit/framework/AssertionFailedError;
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected clearStatus()V
    .registers 1

    .line 227
    return-void
.end method

.method public elapsedTimeAsString(J)Ljava/lang/String;
    .registers 8
    .param p1, "runTime"    # J

    .line 147
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testEnded(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 184
    const-string v0, "Default package for"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 185
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_15
    return-object p1
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    return-object v0
.end method

.method public getTest(Ljava/lang/String;)Ljunit/framework/Test;
    .registers 9
    .param p1, "suiteClassName"    # Ljava/lang/String;

    .line 95
    const-string v0, "Failed to invoke suite():"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_d

    .line 96
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 97
    return-object v2

    .line 99
    :cond_d
    const/4 v1, 0x0

    .line 101
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_e
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_12} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_86

    move-object v1, v3

    .line 111
    nop

    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "suiteMethod":Ljava/lang/reflect/Method;
    :try_start_15
    const-string v4, "suite"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_7c

    move-object v3, v4

    .line 119
    nop

    .line 120
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 121
    const-string v0, "Suite() method must be static"

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 122
    return-object v2

    .line 124
    :cond_30
    const/4 v4, 0x0

    .line 126
    .local v4, "test":Ljunit/framework/Test;
    :try_start_31
    new-array v5, v5, [Ljava/lang/Class;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljunit/framework/Test;
    :try_end_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_3b} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_3b} :catch_44

    move-object v0, v5

    .line 127
    .end local v4    # "test":Ljunit/framework/Test;
    .local v0, "test":Ljunit/framework/Test;
    if-nez v0, :cond_3f

    .line 128
    return-object v0

    .line 137
    :cond_3f
    nop

    .line 139
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 140
    return-object v0

    .line 134
    .end local v0    # "test":Ljunit/framework/Test;
    .restart local v4    # "test":Ljunit/framework/Test;
    :catch_44
    move-exception v5

    .line 135
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 136
    return-object v2

    .line 130
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_5e
    move-exception v5

    .line 131
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 132
    return-object v2

    .line 115
    .end local v4    # "test":Ljunit/framework/Test;
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7c
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 118
    new-instance v2, Ljunit/framework/TestSuite;

    invoke-direct {v2, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :catch_86
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 110
    return-object v2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a2
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "clazz":Ljava/lang/String;
    if-nez v3, :cond_aa

    .line 105
    move-object v3, p1

    .line 106
    :cond_aa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 107
    return-object v2
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 220
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected processArguments([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "args"    # [Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "suiteName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_48

    .line 157
    aget-object v2, p1, v1

    const-string v3, "-noloading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 158
    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->setLoading(Z)V

    goto :goto_45

    .line 159
    :cond_14
    aget-object v2, p1, v1

    const-string v4, "-nofilterstack"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 160
    sput-boolean v3, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    goto :goto_45

    .line 161
    :cond_21
    aget-object v2, p1, v1

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 162
    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_39

    .line 163
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 165
    :cond_39
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Missing Test class name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 168
    :cond_43
    aget-object v0, p1, v1

    .line 156
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    .end local v1    # "i":I
    :cond_48
    return-object v0
.end method

.method protected abstract runFailed(Ljava/lang/String;)V
.end method

.method public setLoading(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 178
    iput-boolean p1, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    .line 179
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 67
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public declared-synchronized startTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    monitor-enter p0

    .line 39
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testStarted(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 40
    monitor-exit p0

    return-void

    .line 38
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method

.method protected useReloadingTestSuiteLoader()Z
    .registers 3

    .line 230
    const-string v0, "loading"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method
