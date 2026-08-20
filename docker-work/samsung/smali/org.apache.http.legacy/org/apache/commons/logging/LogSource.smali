.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 66
    const-string v0, "org.apache.commons.logging.impl.Jdk14Logger"

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 69
    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 72
    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 75
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 84
    const/4 v2, 0x1

    :try_start_12
    const-string v3, "org.apache.log4j.Logger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 85
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_1f

    .line 87
    :cond_1d
    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_20

    .line 91
    :goto_1f
    goto :goto_23

    .line 89
    :catchall_20
    move-exception v3

    .line 90
    .local v3, "t":Ljava/lang/Throwable;
    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 95
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_23
    :try_start_23
    const-string v3, "java.util.logging.Logger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 97
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_36

    .line 99
    :cond_34
    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_37

    .line 103
    :goto_36
    goto :goto_3a

    .line 101
    :catchall_37
    move-exception v2

    .line 102
    .local v2, "t":Ljava/lang/Throwable;
    sput-boolean v1, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 106
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_3a
    const/4 v1, 0x0

    .line 108
    .local v1, "name":Ljava/lang/String;
    :try_start_3b
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 109
    if-nez v1, :cond_4b

    .line 110
    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_4c

    move-object v1, v2

    .line 113
    :cond_4b
    goto :goto_4d

    .line 112
    :catchall_4c
    move-exception v2

    .line 114
    :goto_4d
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    if-eqz v1, :cond_5d

    .line 116
    :try_start_51
    invoke-static {v1}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    .line 124
    :goto_54
    goto :goto_7c

    .line 117
    :catchall_55
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 120
    :try_start_57
    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    .line 123
    goto :goto_54

    .line 121
    :catchall_5b
    move-exception v2

    goto :goto_54

    .line 127
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5d
    :try_start_5d
    sget-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v3, :cond_67

    .line 128
    const-string v0, "org.apache.commons.logging.impl.Log4JLogger"

    .line 129
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_74

    .line 130
    :cond_67
    sget-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v3, :cond_70

    .line 131
    nop

    .line 132
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_74

    .line 134
    :cond_70
    nop

    .line 135
    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_75

    .line 144
    :goto_74
    goto :goto_7c

    .line 137
    :catchall_75
    move-exception v0

    .line 139
    .restart local v0    # "t":Ljava/lang/Throwable;
    nop

    .line 140
    :try_start_77
    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    .line 143
    goto :goto_7c

    .line 141
    :catchall_7b
    move-exception v2

    .line 147
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "name":Ljava/lang/String;
    :goto_7c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 200
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 201
    .local v0, "log":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_13

    .line 202
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 203
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_13
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .registers 2

    .line 262
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "log":Lorg/apache/commons/logging/Log;
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 245
    sget-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/Log;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    move-object v0, v2

    .line 248
    .end local v1    # "args":[Ljava/lang/Object;
    goto :goto_13

    .line 246
    :catchall_11
    move-exception v1

    .line 247
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 249
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_13
    if-nez v0, :cond_1b

    .line 250
    new-instance v1, Lorg/apache/commons/logging/impl/NoOpLog;

    invoke-direct {v1, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 252
    :cond_1b
    return-object v0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .registers 4
    .param p0, "logclass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 193
    .local v0, "argtypes":[Ljava/lang/Class;
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 195
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .registers 5
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 173
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, "logclass":Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 175
    .local v1, "argtypes":[Ljava/lang/Class;
    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    .line 179
    .end local v0    # "logclass":Ljava/lang/Class;
    .end local v1    # "argtypes":[Ljava/lang/Class;
    goto :goto_1b

    .line 177
    :catchall_17
    move-exception v0

    .line 178
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 180
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1b
    return-void
.end method
