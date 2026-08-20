.class public abstract Lorg/apache/commons/logging/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIAGNOSTICS_DEST_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.diagnostics.dest"

.field public static final FACTORY_DEFAULT:Ljava/lang/String; = "org.apache.commons.logging.impl.LogFactoryImpl"

.field public static final FACTORY_PROPERTIES:Ljava/lang/String; = "commons-logging.properties"

.field public static final FACTORY_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory"

.field public static final HASHTABLE_IMPLEMENTATION_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.LogFactory.HashtableImpl"

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field protected static final SERVICE_ID:Ljava/lang/String; = "META-INF/services/org.apache.commons.logging.LogFactory"

.field public static final TCCL_KEY:Ljava/lang/String; = "use_tccl"

.field private static final WEAK_HASHTABLE_CLASSNAME:Ljava/lang/String; = "org.apache.commons.logging.impl.WeakHashtable"

.field private static diagnosticPrefix:Ljava/lang/String;

.field private static diagnosticsStream:Ljava/io/PrintStream;

.field protected static factories:Ljava/util/Hashtable;

.field protected static nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

.field private static thisClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static bridge synthetic -$$Nest$smlogDiagnostic(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 128
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    .line 289
    sput-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 305
    sput-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 1737
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 1738
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->initDiagnostics()V

    .line 1739
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logClassLoaderEnvironment(Ljava/lang/Class;)V

    .line 1740
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->createFactoryStore()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    .line 1741
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1742
    const-string v0, "BOOTSTRAP COMPLETED"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1744
    :cond_26
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method private static cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V
    .registers 3
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "factory"    # Lorg/apache/commons/logging/LogFactory;

    .line 944
    if-eqz p1, :cond_c

    .line 945
    if-nez p0, :cond_7

    .line 946
    sput-object p1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    goto :goto_c

    .line 948
    :cond_7
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :cond_c
    :goto_c
    return-void
.end method

.method protected static createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 9
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1067
    const-class v0, Lorg/apache/commons/logging/LogFactory;

    const/4 v1, 0x0

    .line 1069
    .local v1, "logFactoryClass":Ljava/lang/Class;
    if-eqz p1, :cond_179

    .line 1075
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1077
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1079
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1080
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_8a

    .line 1094
    :cond_3f
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Factory class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1096
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loaded from classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not extend \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1098
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' as loaded by this classloader."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1100
    const-string v2, "[BAD CL TREE] "

    invoke-static {v2, p1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1104
    :cond_8a
    :goto_8a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/LogFactory;
    :try_end_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_90} :catch_148
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_90} :catch_110
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_90} :catch_91
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_90} :catch_1ab

    return-object v2

    .line 1130
    :catch_91
    move-exception v2

    .line 1131
    .local v2, "e":Ljava/lang/ClassCastException;
    :try_start_92
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_179

    .line 1137
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->implementsLogFactory(Ljava/lang/Class;)Z

    move-result v3

    .line 1144
    .local v3, "implementsLogFactory":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application has specified that a custom LogFactory implementation should be used but Class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' cannot be converted to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1148
    .local v4, "msg":Ljava/lang/String;
    if-eqz v3, :cond_d8

    .line 1149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "The conflict is caused by the presence of multiple LogFactory classes in incompatible classloaders. Background can be found in http://jakarta.apache.org/commons/logging/tech.html. If you have not explicitly specified a custom LogFactory then it is likely that the container has set one without your knowledge. In this case, consider using the commons-logging-adapters.jar file or specifying the standard LogFactory from the command line. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_ec

    .line 1156
    :cond_d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Please check the custom implementation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1158
    :goto_ec
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Help can be found @http://jakarta.apache.org/commons/logging/troubleshooting.html."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 1160
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_109

    .line 1161
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1164
    :cond_109
    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 1165
    .local v5, "ex":Ljava/lang/ClassCastException;
    nop

    .end local v1    # "logFactoryClass":Ljava/lang/Class;
    .end local p0    # "factoryClass":Ljava/lang/String;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v5

    .line 1117
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "implementsLogFactory":Z
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "logFactoryClass":Ljava/lang/Class;
    .restart local p0    # "factoryClass":Ljava/lang/String;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_110
    move-exception v2

    .line 1118
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_147

    .line 1120
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_145

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' cannot be loaded via classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1123
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - it depends on some other class that cannot be found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1127
    :cond_145
    nop

    .end local v1    # "logFactoryClass":Ljava/lang/Class;
    .end local p0    # "factoryClass":Ljava/lang/String;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v2

    .line 1118
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v1    # "logFactoryClass":Ljava/lang/Class;
    .restart local p0    # "factoryClass":Ljava/lang/String;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_147
    goto :goto_179

    .line 1106
    :catch_148
    move-exception v2

    .line 1107
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    if-ne p1, v3, :cond_179

    .line 1109
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_177

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate any class called \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' via classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1112
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1110
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1114
    :cond_177
    nop

    .end local v1    # "logFactoryClass":Ljava/lang/Class;
    .end local p0    # "factoryClass":Ljava/lang/String;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    throw v2

    .line 1199
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "logFactoryClass":Ljava/lang/Class;
    .restart local p0    # "factoryClass":Ljava/lang/String;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_179
    :goto_179
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load factory class via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1202
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1200
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1205
    :cond_19f
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 1206
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/LogFactory;
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_1aa} :catch_1ab

    return-object v2

    .line 1207
    :catch_1ab
    move-exception v2

    .line 1209
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 1210
    const-string v3, "Unable to create LogFactory instance."

    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1212
    :cond_1b7
    if-eqz v1, :cond_1c7

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 1215
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v3, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 1220
    :cond_1c7
    new-instance v0, Lorg/apache/commons/logging/LogConfigurationException;

    invoke-direct {v0, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static final createFactoryStore()Ljava/util/Hashtable;
    .registers 5

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "result":Ljava/util/Hashtable;
    nop

    .line 325
    const-string v1, "org.apache.commons.logging.LogFactory.HashtableImpl"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "storeImplementationClass":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 327
    const-string v1, "org.apache.commons.logging.impl.WeakHashtable"

    .line 330
    :cond_c
    :try_start_c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 331
    .local v2, "implementationClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    move-object v0, v3

    .line 346
    .end local v2    # "implementationClass":Ljava/lang/Class;
    goto :goto_32

    .line 333
    :catchall_18
    move-exception v2

    .line 335
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "org.apache.commons.logging.impl.WeakHashtable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 337
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v3

    const-string v4, "[ERROR] LogFactory: Load of custom hashtable failed"

    if-eqz v3, :cond_2d

    .line 339
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_32

    .line 343
    :cond_2d
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 347
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_32
    :goto_32
    if-nez v0, :cond_3a

    .line 348
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v2

    .line 350
    :cond_3a
    return-object v0
.end method

.method protected static directGetContextClassLoader()Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 836
    const/4 v0, 0x0

    .line 840
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    const-class v1, Ljava/lang/Thread;

    const-string v2, "getContextClassLoader"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_3b

    .line 845
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1a} :catch_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1a} :catch_3b

    move-object v0, v2

    .line 875
    goto :goto_25

    .line 850
    :catch_1c
    move-exception v2

    .line 867
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1d
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/SecurityException;

    if-eqz v3, :cond_26

    .line 892
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_25
    goto :goto_42

    .line 872
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_26
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Unexpected InvocationTargetException"

    .line 873
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    throw v3

    .line 847
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_32
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/apache/commons/logging/LogConfigurationException;

    const-string v4, "Unexpected IllegalAccessException"

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/logging/LogConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    throw v3
    :try_end_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_3b} :catch_3b

    .line 876
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_3b
    move-exception v1

    .line 878
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-class v2, Lorg/apache/commons/logging/LogFactory;

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 895
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_42
    return-object v0
.end method

.method private static getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 3
    .param p0, "contextClassLoader"    # Ljava/lang/ClassLoader;

    .line 914
    const/4 v0, 0x0

    .line 916
    .local v0, "factory":Lorg/apache/commons/logging/LogFactory;
    if-nez p0, :cond_6

    .line 921
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    goto :goto_f

    .line 923
    :cond_6
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/logging/LogFactory;

    .line 926
    :goto_f
    return-object v0
.end method

.method protected static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 771
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 772
    :catch_5
    move-exception v0

    .line 773
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get classloader for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' due to security restrictions - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 776
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 778
    :cond_30
    throw v0
.end method

.method private static final getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .registers 15
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1409
    const/4 v0, 0x0

    .line 1410
    .local v0, "props":Ljava/util/Properties;
    const-wide/16 v1, 0x0

    .line 1411
    .local v1, "priority":D
    const/4 v3, 0x0

    .line 1413
    .local v3, "propsUrl":Ljava/net/URL;
    :try_start_4
    invoke-static {p0, p1}, Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 1415
    .local v4, "urls":Ljava/util/Enumeration;
    if-nez v4, :cond_c

    .line 1416
    const/4 v5, 0x0

    return-object v5

    .line 1419
    :cond_c
    :goto_c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 1420
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    .line 1422
    .local v5, "url":Ljava/net/URL;
    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;

    move-result-object v6
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_1c} :catch_db

    .line 1423
    .local v6, "newProps":Ljava/util/Properties;
    if-eqz v6, :cond_d8

    .line 1424
    const-string v7, "priority"

    const-string v8, "\' with priority "

    if-nez v0, :cond_59

    .line 1425
    move-object v3, v5

    .line 1426
    move-object v0, v6

    .line 1427
    :try_start_26
    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1428
    .local v7, "priorityStr":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 1429
    if-eqz v7, :cond_33

    .line 1430
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-wide v1, v9

    .line 1433
    :cond_33
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 1434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LOOKUP] Properties file found at \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1438
    .end local v7    # "priorityStr":Ljava/lang/String;
    :cond_57
    goto/16 :goto_d8

    .line 1439
    :cond_59
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1440
    .local v7, "newPriorityStr":Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 1441
    .local v9, "newPriority":D
    if-eqz v7, :cond_66

    .line 1442
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_65
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_65} :catch_db

    move-wide v9, v11

    .line 1445
    :cond_66
    cmpl-double v11, v9, v1

    const-string v12, "[LOOKUP] Properties file at \'"

    if-lez v11, :cond_a4

    .line 1446
    :try_start_6c
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1447
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " overrides file at \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1454
    :cond_a0
    move-object v3, v5

    .line 1455
    move-object v0, v6

    .line 1456
    move-wide v1, v9

    goto :goto_d8

    .line 1458
    :cond_a4
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 1459
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not override file at \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/SecurityException; {:try_start_6c .. :try_end_d8} :catch_db

    .line 1469
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "newProps":Ljava/util/Properties;
    .end local v7    # "newPriorityStr":Ljava/lang/String;
    .end local v9    # "newPriority":D
    :cond_d8
    :goto_d8
    goto/16 :goto_c

    .line 1474
    .end local v4    # "urls":Ljava/util/Enumeration;
    :cond_da
    goto :goto_e7

    .line 1470
    :catch_db
    move-exception v4

    .line 1471
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 1472
    const-string v5, "SecurityException thrown while trying to find/read config files."

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1476
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_e7
    :goto_e7
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_132

    .line 1477
    if-nez v0, :cond_10c

    .line 1478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LOOKUP] No properties file of name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_132

    .line 1482
    :cond_10c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LOOKUP] Properties file of name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found at \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1488
    :cond_132
    :goto_132
    return-object v0
.end method

.method protected static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 803
    new-instance v0, Lorg/apache/commons/logging/LogFactory$1;

    invoke-direct {v0}, Lorg/apache/commons/logging/LogFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getFactory()Lorg/apache/commons/logging/LogFactory;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 388
    const-string v0, "META-INF/services/org.apache.commons.logging.LogFactory"

    const-string v1, "]. Trying alternative implementations..."

    const-string v2, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    const-string v3, "org.apache.commons.logging.LogFactory"

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 390
    .local v4, "contextClassLoader":Ljava/lang/ClassLoader;
    if-nez v4, :cond_19

    .line 394
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 395
    const-string v5, "Context classloader is null."

    invoke-static {v5}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 400
    :cond_19
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getCachedFactory(Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v5

    .line 401
    .local v5, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v5, :cond_20

    .line 402
    return-object v5

    .line 405
    :cond_20
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 408
    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static {v6}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 409
    const-string v6, "[LOOKUP] "

    invoke-static {v6, v4}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 422
    :cond_45
    const-string v6, "commons-logging.properties"

    invoke-static {v4, v6}, Lorg/apache/commons/logging/LogFactory;->getConfigurationFile(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v6

    .line 426
    .local v6, "props":Ljava/util/Properties;
    move-object v7, v4

    .line 427
    .local v7, "baseClassLoader":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_62

    .line 428
    const-string v8, "use_tccl"

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 429
    .local v8, "useTCCLStr":Ljava/lang/String;
    if-eqz v8, :cond_62

    .line 432
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_62

    .line 440
    sget-object v7, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    .line 447
    .end local v8    # "useTCCLStr":Ljava/lang/String;
    :cond_62
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 448
    const-string v8, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 454
    :cond_6d
    :try_start_6d
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .local v8, "factoryClass":Ljava/lang/String;
    if-eqz v8, :cond_9f

    .line 456
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v9

    if-eqz v9, :cond_99

    .line 457
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LOOKUP] Creating an instance of LogFactory class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' as specified by system property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 462
    :cond_99
    invoke-static {v8, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v9

    move-object v5, v9

    goto :goto_fe

    .line 464
    :cond_9f
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 465
    const-string v9, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_aa} :catch_d7
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_aa} :catch_ab

    goto :goto_fe

    .line 479
    .end local v8    # "factoryClass":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 489
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as specified by a system property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 492
    :cond_d6
    throw v0

    .line 470
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_d7
    move-exception v8

    .line 471
    .local v8, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 475
    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 472
    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 493
    .end local v8    # "e":Ljava/lang/SecurityException;
    :cond_fe
    :goto_fe
    nop

    .line 502
    if-nez v5, :cond_1a1

    .line 503
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v8

    if-eqz v8, :cond_10c

    .line 504
    const-string v8, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    invoke-static {v8}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 509
    :cond_10c
    :try_start_10c
    invoke-static {v4, v0}, Lorg/apache/commons/logging/LogFactory;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_110} :catch_17a

    .line 512
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_16e

    .line 517
    :try_start_112
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_112 .. :try_end_11e} :catch_11f
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11e} :catch_17a

    .line 520
    .local v9, "rd":Ljava/io/BufferedReader;
    goto :goto_12b

    .line 518
    .end local v9    # "rd":Ljava/io/BufferedReader;
    :catch_11f
    move-exception v9

    .line 519
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_120
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v10

    .line 522
    .local v9, "rd":Ljava/io/BufferedReader;
    :goto_12b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 523
    .local v10, "factoryClassName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 525
    if-eqz v10, :cond_16d

    const-string v11, ""

    .line 526
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16d

    .line 527
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v11

    if-eqz v11, :cond_168

    .line 528
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LOOKUP]  Creating an instance of LogFactory class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " as specified by file \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\' which was present in the path of the context classloader."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 534
    :cond_168
    invoke-static {v10, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    move-object v5, v0

    .line 536
    .end local v9    # "rd":Ljava/io/BufferedReader;
    .end local v10    # "factoryClassName":Ljava/lang/String;
    :cond_16d
    goto :goto_179

    .line 538
    :cond_16e
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_179

    .line 539
    const-string v0, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_179} :catch_17a

    .line 556
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_179
    :goto_179
    goto :goto_1a1

    .line 544
    :catch_17a
    move-exception v0

    .line 548
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v8

    if-eqz v8, :cond_1a1

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 562
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1a1
    :goto_1a1
    if-nez v5, :cond_1f5

    .line 563
    if-eqz v6, :cond_1ea

    .line 564
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 565
    const-string v0, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 570
    :cond_1b0
    invoke-virtual {v6, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "factoryClass":Ljava/lang/String;
    if-eqz v0, :cond_1de

    .line 572
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 577
    :cond_1d8
    invoke-static {v0, v7, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v1

    move-object v5, v1

    .end local v5    # "factory":Lorg/apache/commons/logging/LogFactory;
    .local v1, "factory":Lorg/apache/commons/logging/LogFactory;
    goto :goto_1e9

    .line 581
    .end local v1    # "factory":Lorg/apache/commons/logging/LogFactory;
    .restart local v5    # "factory":Lorg/apache/commons/logging/LogFactory;
    :cond_1de
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 582
    const-string v1, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 586
    .end local v0    # "factoryClass":Ljava/lang/String;
    :cond_1e9
    :goto_1e9
    goto :goto_1f5

    .line 587
    :cond_1ea
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 588
    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 598
    :cond_1f5
    :goto_1f5
    if-nez v5, :cond_20a

    .line 599
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_202

    .line 600
    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 615
    :cond_202
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    const-string v1, "org.apache.commons.logging.impl.LogFactoryImpl"

    invoke-static {v1, v0, v4}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v5

    .line 618
    :cond_20a
    if-eqz v5, :cond_229

    .line 622
    invoke-static {v4, v5}, Lorg/apache/commons/logging/LogFactory;->cacheFactory(Ljava/lang/ClassLoader;Lorg/apache/commons/logging/LogFactory;)V

    .line 624
    if-eqz v6, :cond_229

    .line 625
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 626
    .local v0, "names":Ljava/util/Enumeration;
    :goto_215
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_229

    .line 627
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 628
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v5, v1, v2}, Lorg/apache/commons/logging/LogFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 630
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_215

    .line 634
    .end local v0    # "names":Ljava/util/Enumeration;
    :cond_229
    return-object v5
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .registers 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 675
    new-instance v0, Lorg/apache/commons/logging/impl/Jdk14Logger;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/impl/Jdk14Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getProperties(Ljava/net/URL;)Ljava/util/Properties;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;

    .line 1364
    new-instance v0, Lorg/apache/commons/logging/LogFactory$5;

    invoke-direct {v0, p0}, Lorg/apache/commons/logging/LogFactory$5;-><init>(Ljava/net/URL;)V

    .line 1384
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    return-object v1
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .line 1299
    new-instance v0, Lorg/apache/commons/logging/LogFactory$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .line 1327
    new-instance v0, Lorg/apache/commons/logging/LogFactory$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 1351
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1352
    .local v1, "result":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/util/Enumeration;

    return-object v2
.end method

.method private static implementsLogFactory(Ljava/lang/Class;)Z
    .registers 6
    .param p0, "logFactoryClass"    # Ljava/lang/Class;

    .line 1237
    const-string v0, "[CUSTOM LOG FACTORY] "

    const/4 v1, 0x0

    .line 1238
    .local v1, "implementsLogFactory":Z
    if-eqz p0, :cond_9f

    .line 1240
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1241
    .local v2, "logFactoryClassLoader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_12

    .line 1242
    const-string v0, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto/16 :goto_9f

    .line 1244
    :cond_12
    invoke-static {v0, v2}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1245
    const-string v3, "org.apache.commons.logging.LogFactory"

    const/4 v4, 0x0

    .line 1246
    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1247
    .local v3, "factoryFromCustomLoader":Ljava/lang/Class;
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    move v1, v4

    .line 1248
    if-eqz v1, :cond_42

    .line 1249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_9f

    .line 1252
    :cond_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " does not implement LogFactory."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_60} :catch_84
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_60} :catch_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_60} :catch_61

    goto :goto_9f

    .line 1275
    .end local v2    # "logFactoryClassLoader":Ljava/lang/ClassLoader;
    .end local v3    # "factoryFromCustomLoader":Ljava/lang/Class;
    :catch_61
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    goto :goto_9f

    .line 1265
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_68
    move-exception v0

    .line 1272
    .local v0, "e":Ljava/lang/LinkageError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1274
    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1272
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/LinkageError;
    goto :goto_9f

    .line 1256
    :catch_84
    move-exception v0

    .line 1262
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1264
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1262
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1287
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_9f
    :goto_9f
    return v1
.end method

.method private static initDiagnostics()V
    .registers 4

    .line 1500
    :try_start_0
    const-string v0, "org.apache.commons.logging.diagnostics.dest"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_61

    .line 1501
    .local v0, "dest":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1502
    return-void

    .line 1508
    :cond_9
    nop

    .line 1510
    const-string v1, "STDOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1511
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    goto :goto_32

    .line 1512
    :cond_17
    const-string v1, "STDERR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1513
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    goto :goto_32

    .line 1517
    :cond_24
    :try_start_24
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1518
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_31} :catch_5f

    .line 1522
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1536
    :goto_32
    :try_start_32
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->thisClassLoader:Ljava/lang/ClassLoader;

    move-object v2, v1

    .line 1537
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_3a

    .line 1538
    const-string v1, "BOOTLOADER"

    .local v1, "classLoaderName":Ljava/lang/String;
    goto :goto_3e

    .line 1540
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :cond_3a
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_3e} :catch_3f

    .line 1544
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v1    # "classLoaderName":Ljava/lang/String;
    :goto_3e
    goto :goto_43

    .line 1542
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_3f
    move-exception v1

    .line 1543
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "UNKNOWN"

    move-object v1, v2

    .line 1545
    .local v1, "classLoaderName":Ljava/lang/String;
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LogFactory from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    .line 1546
    return-void

    .line 1519
    .end local v1    # "classLoaderName":Ljava/lang/String;
    :catch_5f
    move-exception v1

    .line 1521
    .local v1, "ex":Ljava/io/IOException;
    return-void

    .line 1504
    .end local v0    # "dest":Ljava/lang/String;
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_61
    move-exception v0

    .line 1507
    .local v0, "ex":Ljava/lang/SecurityException;
    return-void
.end method

.method protected static isDiagnosticsEnabled()Z
    .registers 1

    .line 1558
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static logClassLoaderEnvironment(Ljava/lang/Class;)V
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 1618
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1619
    return-void

    .line 1623
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ENV] Extension directories (java.ext.dir): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.ext.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ENV] Application classpath (java.class.path): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "java.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_3f} :catch_40

    .line 1627
    goto :goto_46

    .line 1625
    :catch_40
    move-exception v0

    .line 1626
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "[ENV] Security setting prevent interrogation of system classpaths."

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1629
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_46
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, "className":Ljava/lang/String;
    :try_start_4a
    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4e} :catch_90

    .line 1639
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    nop

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was loaded via classloader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1643
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1641
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] Ancestry of classloader which loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/logging/LogFactory;->logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1645
    return-void

    .line 1634
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_90
    move-exception v1

    .line 1636
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ENV] Security forbids determining the classloader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method private static final logDiagnostic(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 1580
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_13

    .line 1581
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->diagnosticPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1582
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1583
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1585
    :cond_13
    return-void
.end method

.method private static logHierarchy(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1655
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1656
    return-void

    .line 1659
    :cond_7
    if-eqz p1, :cond_35

    .line 1660
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "classLoaderString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1665
    .end local v0    # "classLoaderString":Ljava/lang/String;
    :cond_35
    :try_start_35
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_39} :catch_84

    .line 1670
    .local v0, "systemClassLoader":Ljava/lang/ClassLoader;
    nop

    .line 1671
    if-eqz p1, :cond_83

    .line 1672
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ClassLoader tree:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1674
    .local v1, "buf":Ljava/lang/StringBuffer;
    :cond_54
    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1675
    if-ne p1, v0, :cond_62

    .line 1676
    const-string v2, " (SYSTEM) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1680
    :cond_62
    :try_start_62
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_66
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_66} :catch_75

    move-object p1, v2

    .line 1684
    nop

    .line 1686
    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1687
    if-nez p1, :cond_54

    .line 1688
    const-string v2, "BOOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1689
    goto :goto_7c

    .line 1681
    :catch_75
    move-exception v2

    .line 1682
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v3, " --> SECRET"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1683
    nop

    .line 1692
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :goto_7c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1694
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_83
    return-void

    .line 1666
    .end local v0    # "systemClassLoader":Ljava/lang/ClassLoader;
    :catch_84
    move-exception v0

    .line 1667
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Security forbids determining the system classloader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1669
    return-void
.end method

.method protected static final logRawDiagnostic(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1594
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_c

    .line 1595
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1596
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->diagnosticsStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1598
    :cond_c
    return-void
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 3
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1047
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/logging/LogFactory;->newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;

    move-result-object v0

    return-object v0
.end method

.method protected static newFactory(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lorg/apache/commons/logging/LogFactory;
    .registers 7
    .param p0, "factoryClass"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "contextClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 1006
    new-instance v0, Lorg/apache/commons/logging/LogFactory$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/logging/LogFactory$2;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 1013
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/commons/logging/LogConfigurationException;

    if-eqz v1, :cond_31

    .line 1014
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/logging/LogConfigurationException;

    .line 1015
    .local v1, "ex":Lorg/apache/commons/logging/LogConfigurationException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred while loading the factory class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1018
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1016
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1020
    :cond_30
    throw v1

    .line 1022
    .end local v1    # "ex":Lorg/apache/commons/logging/LogConfigurationException;
    :cond_31
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1024
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to manage classloader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1025
    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 1027
    :cond_5f
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/logging/LogFactory;

    return-object v1
.end method

.method public static objectId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 1709
    if-nez p0, :cond_5

    .line 1710
    const-string v0, "null"

    return-object v0

    .line 1712
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static release(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 694
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing factory for classloader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/logging/LogFactory;->objectId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 697
    :cond_20
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    monitor-enter v0

    .line 698
    if-nez p0, :cond_30

    .line 699
    :try_start_25
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    if-eqz v1, :cond_42

    .line 700
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 701
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    goto :goto_42

    .line 704
    :cond_30
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/LogFactory;

    .line 705
    .local v1, "factory":Lorg/apache/commons/logging/LogFactory;
    if-eqz v1, :cond_42

    .line 706
    invoke-virtual {v1}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 707
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .end local v1    # "factory":Lorg/apache/commons/logging/LogFactory;
    :cond_42
    :goto_42
    monitor-exit v0

    .line 712
    return-void

    .line 710
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public static releaseAll()V
    .registers 3

    .line 725
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 726
    const-string v0, "Releasing factory for all classloaders."

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->logDiagnostic(Ljava/lang/String;)V

    .line 728
    :cond_b
    sget-object v0, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    monitor-enter v0

    .line 729
    :try_start_e
    sget-object v1, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 730
    .local v1, "elements":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 731
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/logging/LogFactory;

    .line 732
    .local v2, "element":Lorg/apache/commons/logging/LogFactory;
    invoke-virtual {v2}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 733
    .end local v2    # "element":Lorg/apache/commons/logging/LogFactory;
    goto :goto_14

    .line 734
    :cond_24
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 736
    sget-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    if-eqz v2, :cond_33

    .line 737
    invoke-virtual {v2}, Lorg/apache/commons/logging/LogFactory;->release()V

    .line 738
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogFactory;->nullClassLoaderFactory:Lorg/apache/commons/logging/LogFactory;

    .line 740
    .end local v1    # "elements":Ljava/util/Enumeration;
    :cond_33
    monitor-exit v0

    .line 742
    return-void

    .line 740
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttributeNames()[Ljava/lang/String;
.end method

.method public abstract getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method
