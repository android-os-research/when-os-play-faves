.class public Lorg/apache/commons/logging/impl/LogFactoryImpl;
.super Lorg/apache/commons/logging/LogFactory;
.source "LogFactoryImpl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_FLAWED_CONTEXT_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedContext"

.field public static final ALLOW_FLAWED_DISCOVERY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedDiscovery"

.field public static final ALLOW_FLAWED_HIERARCHY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log.allowFlawedHierarchy"

.field private static final LOGGING_IMPL_JDK14_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk14Logger"

.field private static final LOGGING_IMPL_LOG4J_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Log4JLogger"

.field private static final LOGGING_IMPL_LUMBERJACK_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

.field private static final LOGGING_IMPL_SIMPLE_LOGGER:Ljava/lang/String; = "org.apache.commons.logging.impl.SimpleLog"

.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"

.field protected static final LOG_PROPERTY_OLD:Ljava/lang/String; = "org.apache.commons.logging.log"

.field private static final PKG_IMPL:Ljava/lang/String; = "org.apache.commons.logging.impl."

.field private static final PKG_LEN:I

.field private static final classesToDiscover:[Ljava/lang/String;


# instance fields
.field private allowFlawedContext:Z

.field private allowFlawedDiscovery:Z

.field private allowFlawedHierarchy:Z

.field protected attributes:Ljava/util/Hashtable;

.field private diagnosticPrefix:Ljava/lang/String;

.field protected instances:Ljava/util/Hashtable;

.field private logClassName:Ljava/lang/String;

.field protected logConstructor:Ljava/lang/reflect/Constructor;

.field protected logConstructorSignature:[Ljava/lang/Class;

.field protected logMethod:Ljava/lang/reflect/Method;

.field protected logMethodSignature:[Ljava/lang/Class;

.field private useTCCL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 86
    const-string v0, "org.apache.commons.logging.impl."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    .line 178
    const-string v0, "org.apache.commons.logging.impl.Log4JLogger"

    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    const-string v2, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    const-string v3, "org.apache.commons.logging.impl.SimpleLog"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 96
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 203
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    .line 210
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 232
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    .line 240
    iput-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 246
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lorg/apache/commons/logging/LogFactory;

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    .line 97
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initDiagnostics()V

    .line 98
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 99
    const-string v0, "Instance created."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 101
    :cond_38
    return-void
.end method

.method private createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;
    .registers 23
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "affectState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 968
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, ".class"

    const-string v4, ": "

    const-string v5, "The log adapter \'"

    const-string v6, ""

    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    const-string v7, "\'"

    if-eqz v0, :cond_2e

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting to instantiate \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 972
    :cond_2e
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v0, v9

    move-object v9, v0

    .line 973
    .local v9, "params":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 974
    .local v10, "logAdapter":Lorg/apache/commons/logging/Log;
    const/4 v0, 0x0

    .line 976
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v11, 0x0

    .line 977
    .local v11, "logAdapterClass":Ljava/lang/Class;
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBaseClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object v13, v12

    move-object v12, v11

    move-object v11, v0

    .line 982
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .local v11, "constructor":Ljava/lang/reflect/Constructor;
    .local v12, "logAdapterClass":Ljava/lang/Class;
    .local v13, "currentCL":Ljava/lang/ClassLoader;
    :goto_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Trying to load \'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "\' from classloader "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 986
    invoke-static {v13}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 988
    :try_start_63
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v2, v15, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "resourceName":Ljava/lang/String;
    if-eqz v13, :cond_89

    .line 996
    invoke-virtual {v13, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .local v8, "url":Ljava/net/URL;
    goto :goto_9e

    .line 998
    .end local v8    # "url":Ljava/net/URL;
    :cond_89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8
    :try_end_9e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_63 .. :try_end_9e} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_63 .. :try_end_9e} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_63 .. :try_end_9e} :catch_1b4
    .catchall {:try_start_63 .. :try_end_9e} :catchall_1a1

    .line 1001
    .restart local v8    # "url":Ljava/net/URL;
    :goto_9e
    const-string v15, "Class \'"

    if-nez v8, :cond_c9

    .line 1002
    move-object/from16 v16, v3

    :try_start_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\' ["

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "] cannot be found."

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_f0

    .line 1004
    :cond_c9
    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "\' was found at \'"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a4 .. :try_end_ed} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_a4 .. :try_end_ed} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_a4 .. :try_end_ed} :catch_1b4
    .catchall {:try_start_a4 .. :try_end_ed} :catchall_f7

    goto :goto_f0

    .line 988
    .end local v0    # "resourceName":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :cond_ee
    move-object/from16 v16, v3

    .line 1008
    :goto_f0
    const/4 v3, 0x0

    .line 1010
    .local v3, "c":Ljava/lang/Class;
    const/4 v8, 0x1

    :try_start_f2
    invoke-static {v2, v8, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_f6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f2 .. :try_end_f6} :catch_fa
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_f2 .. :try_end_f6} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_f2 .. :try_end_f6} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_f2 .. :try_end_f6} :catch_1b4
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_f7

    .line 1042
    .end local v3    # "c":Ljava/lang/Class;
    .local v0, "c":Ljava/lang/Class;
    goto :goto_147

    .line 1103
    .end local v0    # "c":Ljava/lang/Class;
    :catchall_f7
    move-exception v0

    goto/16 :goto_1a4

    .line 1011
    .restart local v3    # "c":Ljava/lang/Class;
    :catch_fa
    move-exception v0

    move-object v15, v0

    .line 1015
    .local v15, "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :try_start_fc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1016
    .local v8, "msg":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v17, v3

    .end local v3    # "c":Ljava/lang/Class;
    .local v17, "c":Ljava/lang/Class;
    const-string v3, "\' is not available via classloader "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1020
    invoke-static {v13}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1022
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_142
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_fc .. :try_end_142} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_fc .. :try_end_142} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_fc .. :try_end_142} :catch_1b4
    .catchall {:try_start_fc .. :try_end_142} :catchall_f7

    .line 1031
    :try_start_142
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_146
    .catch Ljava/lang/ClassNotFoundException; {:try_start_142 .. :try_end_146} :catch_161
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_142 .. :try_end_146} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_142 .. :try_end_146} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_142 .. :try_end_146} :catch_1b4
    .catchall {:try_start_142 .. :try_end_146} :catchall_f7

    .line 1041
    .end local v17    # "c":Ljava/lang/Class;
    .restart local v0    # "c":Ljava/lang/Class;
    nop

    .line 1044
    .end local v8    # "msg":Ljava/lang/String;
    .end local v15    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :goto_147
    :try_start_147
    iget-object v3, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object v11, v3

    .line 1045
    invoke-virtual {v11, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1051
    .local v3, "o":Ljava/lang/Object;
    instance-of v8, v3, Lorg/apache/commons/logging/Log;

    if-eqz v8, :cond_15d

    .line 1052
    move-object v12, v0

    .line 1053
    move-object v8, v3

    check-cast v8, Lorg/apache/commons/logging/Log;

    move-object v10, v8

    .line 1054
    goto/16 :goto_240

    .line 1067
    :cond_15d
    invoke-direct {v1, v13, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 1108
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_1a7

    .line 1032
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v15    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .restart local v17    # "c":Ljava/lang/Class;
    :catch_161
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1034
    .local v0, "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v18, v8

    .end local v8    # "msg":Ljava/lang/String;
    .local v18, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    .end local v18    # "msg":Ljava/lang/String;
    .local v3, "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v18, v0

    .end local v0    # "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .local v18, "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    const-string v0, "\' is not available via the LogFactoryImpl class classloader: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_147 .. :try_end_19f} :catch_1fb
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_147 .. :try_end_19f} :catch_1b6
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_147 .. :try_end_19f} :catch_1b4
    .catchall {:try_start_147 .. :try_end_19f} :catchall_f7

    .line 1040
    goto/16 :goto_240

    .line 1103
    .end local v3    # "msg":Ljava/lang/String;
    .end local v15    # "originalClassNotFoundException":Ljava/lang/ClassNotFoundException;
    .end local v17    # "c":Ljava/lang/Class;
    .end local v18    # "secondaryClassNotFoundException":Ljava/lang/ClassNotFoundException;
    :catchall_1a1
    move-exception v0

    move-object/from16 v16, v3

    .line 1107
    .local v0, "t":Ljava/lang/Throwable;
    :goto_1a4
    invoke-direct {v1, v2, v13, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V

    .line 1110
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1a7
    if-nez v13, :cond_1ab

    .line 1111
    goto/16 :goto_240

    .line 1115
    :cond_1ab
    invoke-virtual {v13}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v13

    move-object/from16 v3, v16

    const/4 v8, 0x1

    goto/16 :goto_3f

    .line 1099
    :catch_1b4
    move-exception v0

    .line 1102
    .local v0, "e":Lorg/apache/commons/logging/LogConfigurationException;
    throw v0

    .line 1083
    .end local v0    # "e":Lorg/apache/commons/logging/LogConfigurationException;
    :catch_1b6
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ExceptionInInitializerError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1091
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is unable to initialize itself when loaded via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1095
    invoke-static {v13}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1097
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1091
    invoke-virtual {v1, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1098
    goto :goto_240

    .line 1068
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_1fb
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .restart local v3    # "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is missing dependencies when loaded via classloader "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1079
    invoke-static {v13}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1081
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1075
    invoke-virtual {v1, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1082
    nop

    .line 1118
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_240
    if-eqz v10, :cond_2c5

    if-eqz p3, :cond_2c5

    .line 1120
    iput-object v2, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    .line 1121
    iput-object v11, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    .line 1125
    :try_start_248
    const-string v0, "setLogFactory"

    iget-object v3, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethodSignature:[Ljava/lang/Class;

    invoke-virtual {v12, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found method setLogFactory(LogFactory) in \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_26c
    .catchall {:try_start_248 .. :try_end_26c} :catchall_26d

    .line 1136
    goto :goto_299

    .line 1129
    :catchall_26d
    move-exception v0

    .line 1130
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[INFO] \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1133
    invoke-static {v13}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not declare optional method setLogFactory(LogFactory)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1131
    invoke-virtual {v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1138
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log adapter \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " has been selected for use."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    invoke-virtual {v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1144
    :cond_2c5
    return-object v10
.end method

.method private discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 8
    .param p1, "logCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 770
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 771
    const-string v0, "Discovering a Log implementation..."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 774
    :cond_b
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->initConfiguration()V

    .line 776
    const/4 v0, 0x0

    .line 779
    .local v0, "result":Lorg/apache/commons/logging/Log;
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->findUserSpecifiedLogClassName()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "specifiedLogClassName":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_6e

    .line 782
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to load user-specified log class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 787
    :cond_38
    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 790
    if-nez v0, :cond_6d

    .line 791
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "User-specified log class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 792
    .local v2, "messageBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const-string v3, "\' cannot be found or is not useable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    if-eqz v1, :cond_63

    .line 798
    const-string v3, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v3, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v3, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v3, "org.apache.commons.logging.impl.SimpleLog"

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_63
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    .end local v2    # "messageBuffer":Ljava/lang/StringBuffer;
    :cond_6d
    return-object v0

    .line 837
    :cond_6e
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 838
    const-string v3, "No user-specified Log implementation; performing discovery using the standard supported logging implementations..."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 842
    :cond_79
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7a
    sget-object v4, Lorg/apache/commons/logging/impl/LogFactoryImpl;->classesToDiscover:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_8a

    if-nez v0, :cond_8a

    .line 843
    aget-object v4, v4, v3

    invoke-direct {p0, v4, p1, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 842
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 846
    .end local v3    # "i":I
    :cond_8a
    if-eqz v0, :cond_8d

    .line 851
    return-object v0

    .line 847
    :cond_8d
    new-instance v2, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v3, "No suitable Log implementation"

    invoke-direct {v2, v3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private findUserSpecifiedLogClassName()Ljava/lang/String;
    .registers 6

    .line 890
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 891
    const-string v0, "Trying to get log class from attribute \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 893
    :cond_b
    const-string v0, "org.apache.commons.logging.Log"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 895
    .local v1, "specifiedClass":Ljava/lang/String;
    const-string v2, "org.apache.commons.logging.log"

    if-nez v1, :cond_29

    .line 896
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 897
    const-string v3, "Trying to get log class from attribute \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 900
    :cond_22
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 903
    :cond_29
    if-nez v1, :cond_5d

    .line 904
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 905
    const-string v3, "Trying to get log class from system property \'org.apache.commons.logging.Log\'"

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 909
    :cond_36
    :try_start_36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3a} :catch_3c

    move-object v1, v0

    .line 915
    goto :goto_5d

    .line 910
    :catch_3c
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 912
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No access allowed to system property \'org.apache.commons.logging.Log\' - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 913
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 912
    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 918
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5d
    :goto_5d
    if-nez v1, :cond_91

    .line 919
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 920
    const-string v0, "Trying to get log class from system property \'org.apache.commons.logging.log\'"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 924
    :cond_6a
    :try_start_6a
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_6e} :catch_70

    move-object v1, v0

    .line 930
    goto :goto_91

    .line 925
    :catch_70
    move-exception v0

    .line 926
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No access allowed to system property \'org.apache.commons.logging.log\' - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 936
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_91
    :goto_91
    if-eqz v1, :cond_97

    .line 937
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 940
    :cond_97
    return-object v1
.end method

.method private getBaseClassLoader()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 1167
    const-class v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1169
    .local v0, "thisClassLoader":Ljava/lang/ClassLoader;
    iget-boolean v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    if-nez v1, :cond_b

    .line 1170
    return-object v0

    .line 1173
    :cond_b
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1175
    .local v1, "contextClassLoader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1178
    .local v2, "baseClassLoader":Ljava/lang/ClassLoader;
    const-string v3, "Bad classloader hierarchy; LogFactoryImpl was loaded via a classloader that is not related to the current context classloader."

    if-nez v2, :cond_2d

    .line 1183
    iget-boolean v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v4, :cond_27

    .line 1184
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1185
    const-string v3, "[WARNING] the context classloader is not part of a parent-child relationship with the classloader that loaded LogFactoryImpl."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1193
    :cond_26
    return-object v1

    .line 1196
    :cond_27
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v4, v3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1203
    :cond_2d
    if-eq v2, v1, :cond_45

    .line 1209
    iget-boolean v4, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    if-eqz v4, :cond_3f

    .line 1210
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1211
    const-string v3, "Warning: the context classloader is an ancestor of the classloader that loaded LogFactoryImpl; it should be the same or a descendant. The application using commons-logging should ensure the context classloader is used correctly."

    invoke-virtual {p0, v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_45

    .line 1219
    :cond_3f
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v4, v3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1226
    :cond_45
    :goto_45
    return-object v2
.end method

.method private getBooleanConfiguration(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dflt"    # Z

    .line 738
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 740
    return p2

    .line 741
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 449
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "property"    # Ljava/lang/String;

    .line 692
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ENV] Trying to get configuration for item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 696
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    .local v0, "valueObj":Ljava/lang/Object;
    const-string v1, "] for "

    if-eqz v0, :cond_4d

    .line 698
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] Found LogFactory attribute ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 701
    :cond_48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 704
    :cond_4d
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] No LogFactory attribute found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 709
    :cond_69
    :try_start_69
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_94

    .line 711
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ENV] Found system property ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 714
    :cond_93
    return-object v2

    .line 717
    :cond_94
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] No system property found for property "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/SecurityException; {:try_start_69 .. :try_end_b0} :catch_b1

    .line 724
    .end local v2    # "value":Ljava/lang/String;
    :cond_b0
    goto :goto_ce

    .line 720
    :catch_b1
    move-exception v1

    .line 721
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] Security prevented reading system property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 726
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_ce
    :goto_ce
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ENV] No configuration defined for item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 730
    :cond_ea
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 430
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getLowestClassLoader(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 5
    .param p1, "c1"    # Ljava/lang/ClassLoader;
    .param p2, "c2"    # Ljava/lang/ClassLoader;

    .line 1242
    if-nez p1, :cond_3

    .line 1243
    return-object p2

    .line 1245
    :cond_3
    if-nez p2, :cond_6

    .line 1246
    return-object p1

    .line 1251
    :cond_6
    move-object v0, p1

    .line 1252
    .local v0, "current":Ljava/lang/ClassLoader;
    :goto_7
    if-eqz v0, :cond_11

    .line 1253
    if-ne v0, p2, :cond_c

    .line 1254
    return-object p1

    .line 1255
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_7

    .line 1259
    :cond_11
    move-object v0, p2

    .line 1260
    :goto_12
    if-eqz v0, :cond_1c

    .line 1261
    if-ne v0, p1, :cond_17

    .line 1262
    return-object p2

    .line 1263
    :cond_17
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_12

    .line 1266
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleFlawedDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "logAdapterClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "discoveryFlaw"    # Ljava/lang/Throwable;

    .line 1288
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate Log \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1291
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1292
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1295
    :cond_3c
    iget-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    if-eqz v0, :cond_41

    .line 1298
    return-void

    .line 1296
    :cond_41
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, p3}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private handleFlawedHierarchy(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 10
    .param p1, "badClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "badClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 1330
    const/4 v0, 0x0

    .line 1331
    .local v0, "implementsLog":Z
    const-class v1, Lorg/apache/commons/logging/Log;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1332
    .local v1, "logInterfaceName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 1333
    .local v2, "interfaces":[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v2

    if-ge v3, v4, :cond_20

    .line 1334
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1335
    const/4 v0, 0x1

    .line 1336
    goto :goto_20

    .line 1333
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1340
    .end local v3    # "i":I
    :cond_20
    :goto_20
    if-eqz v0, :cond_e6

    .line 1343
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 1345
    :try_start_28
    const-class v3, Lorg/apache/commons/logging/Log;

    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1346
    .local v3, "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1347
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' was found in classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1349
    invoke-static {p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". It is bound to a Log interface which is not the one loaded from classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1352
    invoke-static {v3}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1346
    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_28 .. :try_end_64} :catchall_65

    .line 1357
    .end local v3    # "logInterfaceClassLoader":Ljava/lang/ClassLoader;
    goto :goto_82

    .line 1353
    :catchall_65
    move-exception v3

    .line 1354
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while trying to output diagnostics about bad class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1360
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_82
    :goto_82
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    const-string v4, "\' visible."

    const-string v5, "You have more than one version of \'"

    if-nez v3, :cond_bf

    .line 1361
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1362
    .local v3, "msg":Ljava/lang/StringBuffer;
    const-string v6, "Terminating logging for this context "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    const-string v6, "due to bad log hierarchy. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1365
    const-class v5, Lorg/apache/commons/logging/Log;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1366
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1367
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 1368
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1370
    :cond_b5
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1373
    .end local v3    # "msg":Ljava/lang/StringBuffer;
    :cond_bf
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 1374
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1375
    .restart local v3    # "msg":Ljava/lang/StringBuffer;
    const-string v6, "Warning: bad log hierarchy. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1376
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    const-class v5, Lorg/apache/commons/logging/Log;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1380
    .end local v3    # "msg":Ljava/lang/StringBuffer;
    goto :goto_13d

    .line 1383
    :cond_e6
    iget-boolean v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    const-string v4, "\' does not implement the Log interface."

    if-nez v3, :cond_11c

    .line 1384
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1385
    .restart local v3    # "msg":Ljava/lang/StringBuffer;
    const-string v5, "Terminating logging for this context. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    const-string v5, "Log class \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1387
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1389
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 1390
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1393
    :cond_112
    new-instance v4, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1396
    .end local v3    # "msg":Ljava/lang/StringBuffer;
    :cond_11c
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 1397
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1398
    .restart local v3    # "msg":Ljava/lang/StringBuffer;
    const-string v5, "[WARNING] Log class \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1399
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1401
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 1404
    .end local v3    # "msg":Ljava/lang/StringBuffer;
    :cond_13d
    :goto_13d
    return-void
.end method

.method private informUponSimilarName(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "messageBuffer"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "candidate"    # Ljava/lang/String;

    .line 864
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 867
    return-void

    .line 873
    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget v0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->PKG_LEN:I

    add-int/lit8 v6, v0, 0x5

    move-object v1, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 874
    const-string v0, " Did you mean \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    const-string v0, "\'?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    :cond_23
    return-void
.end method

.method private initConfiguration()V
    .registers 3

    .line 752
    const-string v0, "org.apache.commons.logging.Log.allowFlawedContext"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedContext:Z

    .line 753
    const-string v0, "org.apache.commons.logging.Log.allowFlawedDiscovery"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedDiscovery:Z

    .line 754
    const-string v0, "org.apache.commons.logging.Log.allowFlawedHierarchy"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getBooleanConfiguration(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->allowFlawedHierarchy:Z

    .line 755
    return-void
.end method

.method private initDiagnostics()V
    .registers 6

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 478
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 481
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_d

    .line 482
    :try_start_a
    const-string v2, "BOOTLOADER"

    .local v2, "classLoaderName":Ljava/lang/String;
    goto :goto_11

    .line 484
    .end local v2    # "classLoaderName":Ljava/lang/String;
    :cond_d
    invoke-static {v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    .line 488
    .restart local v2    # "classLoaderName":Ljava/lang/String;
    :goto_11
    goto :goto_16

    .line 486
    .end local v2    # "classLoaderName":Ljava/lang/String;
    :catch_12
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v3, "UNKNOWN"

    move-object v2, v3

    .line 489
    .local v2, "classLoaderName":Ljava/lang/String;
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LogFactoryImpl@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    .line 490
    return-void
.end method

.method protected static isDiagnosticsEnabled()Z
    .registers 1

    .line 439
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    return v0
.end method

.method private isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .line 652
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    const-string v1, "\'."

    if-eqz v0, :cond_22

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 656
    :cond_22
    nop

    .line 658
    const/4 v0, 0x0

    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-direct {p0, p2, v2, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->createLogFromClass(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 661
    .local v2, "log":Lorg/apache/commons/logging/Log;
    if-nez v2, :cond_53

    .line 662
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 665
    :cond_52
    return v0

    .line 667
    :cond_53
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_24 .. :try_end_73} :catch_75

    .line 670
    :cond_73
    const/4 v0, 0x1

    return v0

    .line 672
    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    :catch_75
    move-exception v1

    .line 673
    .local v1, "e":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging system \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is available but not useable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 676
    :cond_98
    return v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .registers 6

    .line 287
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 288
    .local v0, "names":Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 289
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 290
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b

    .line 292
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 293
    .local v2, "results":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    array-length v4, v2

    if-ge v3, v4, :cond_30

    .line 294
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 296
    .end local v3    # "i":I
    :cond_30
    return-object v2
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 3
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 337
    .local v0, "instance":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_13

    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_13
    return-object v0
.end method

.method protected getLogClassName()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 519
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLogConstructor()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_f

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    .line 546
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method protected isJdk13LumberjackAvailable()Z
    .registers 3

    .line 557
    const-string v0, "Jdk13Lumberjack"

    const-string v1, "org.apache.commons.logging.impl.Jdk13LumberjackLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isJdk14Available()Z
    .registers 3

    .line 573
    const-string v0, "Jdk14"

    const-string v1, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isLog4JAvailable()Z
    .registers 3

    .line 586
    const-string v0, "Log4J"

    const-string v1, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isLogLibraryAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected logDiagnostic(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 501
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logRawDiagnostic(Ljava/lang/String;)V

    .line 504
    :cond_1c
    return-void
.end method

.method protected newInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, "instance":Lorg/apache/commons/logging/Log;
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_d

    .line 606
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->discoverLogImplementation(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    move-object v0, v1

    goto :goto_18

    .line 609
    :cond_d
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 610
    .local v4, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/Log;

    move-object v0, v1

    .line 613
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_18
    iget-object v1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_24

    .line 614
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    move-object v2, v3

    .line 615
    .local v2, "params":[Ljava/lang/Object;
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Lorg/apache/commons/logging/LogConfigurationException; {:try_start_1 .. :try_end_24} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_24} :catch_2c
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    .line 618
    .end local v2    # "params":[Ljava/lang/Object;
    :cond_24
    return-object v0

    .line 636
    :catchall_25
    move-exception v1

    .line 639
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v2, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 627
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_2c
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 631
    .local v2, "c":Ljava/lang/Throwable;
    if-eqz v2, :cond_39

    .line 632
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v3, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 634
    :cond_39
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v3, v1}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 620
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "c":Ljava/lang/Throwable;
    :catch_3f
    move-exception v1

    .line 625
    .local v1, "lce":Lorg/apache/commons/logging/LogConfigurationException;
    throw v1
.end method

.method public release()V
    .registers 2

    .line 356
    const-string v0, "Releasing all known loggers"

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 358
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    .line 401
    const-string v0, "setAttribute: call too late; configuration already performed."

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->logDiagnostic(Ljava/lang/String;)V

    .line 404
    :cond_9
    if-nez p2, :cond_11

    .line 405
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 407
    :cond_11
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :goto_16
    const-string v0, "use_tccl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 411
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl;->useTCCL:Z

    .line 414
    :cond_2c
    return-void
.end method
