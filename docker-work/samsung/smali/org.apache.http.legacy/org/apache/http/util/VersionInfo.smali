.class public Lorg/apache/http/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PROPERTY_MODULE:Ljava/lang/String; = "info.module"

.field public static final PROPERTY_RELEASE:Ljava/lang/String; = "info.release"

.field public static final PROPERTY_TIMESTAMP:Ljava/lang/String; = "info.timestamp"

.field public static final UNAVAILABLE:Ljava/lang/String; = "UNAVAILABLE"

.field public static final VERSION_PROPERTY_FILE:Ljava/lang/String; = "version.properties"


# instance fields
.field private final infoClassloader:Ljava/lang/String;

.field private final infoModule:Ljava/lang/String;

.field private final infoPackage:Ljava/lang/String;

.field private final infoRelease:Ljava/lang/String;

.field private final infoTimestamp:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/lang/String;
    .param p4, "time"    # Ljava/lang/String;
    .param p5, "clsldr"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_24

    .line 108
    iput-object p1, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 109
    const-string v0, "UNAVAILABLE"

    if-eqz p2, :cond_d

    move-object v1, p2

    goto :goto_e

    :cond_d
    move-object v1, v0

    :goto_e
    iput-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    .line 110
    if-eqz p3, :cond_14

    move-object v1, p3

    goto :goto_15

    :cond_14
    move-object v1, v0

    :goto_15
    iput-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    .line 111
    if-eqz p4, :cond_1b

    move-object v1, p4

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    iput-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    .line 112
    if-eqz p5, :cond_21

    move-object v0, p5

    :cond_21
    iput-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    .line 113
    return-void

    .line 104
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package identifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static final fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .registers 14
    .param p0, "pckg"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/util/Map;
    .param p2, "clsldr"    # Ljava/lang/ClassLoader;

    .line 288
    if-eqz p0, :cond_64

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "module":Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, "release":Ljava/lang/String;
    const/4 v2, 0x0

    .line 297
    .local v2, "timestamp":Ljava/lang/String;
    if-eqz p1, :cond_4e

    .line 298
    const-string v3, "info.module"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 299
    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v3, :cond_1a

    .line 300
    const/4 v0, 0x0

    .line 302
    :cond_1a
    const-string v4, "info.release"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 303
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_33

    .line 304
    const-string v4, "${pom.version}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 305
    :cond_33
    const/4 v1, 0x0

    .line 307
    :cond_34
    const-string v4, "info.timestamp"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 308
    if-eqz v2, :cond_4e

    .line 309
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v3, :cond_4d

    .line 310
    const-string v3, "${mvn.timestamp}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 312
    :cond_4d
    const/4 v2, 0x0

    .line 315
    :cond_4e
    const/4 v3, 0x0

    .line 316
    .local v3, "clsldrstr":Ljava/lang/String;
    if-eqz p2, :cond_57

    .line 317
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_58

    .line 316
    :cond_57
    move-object v9, v3

    .line 319
    .end local v3    # "clsldrstr":Ljava/lang/String;
    .local v9, "clsldrstr":Ljava/lang/String;
    :goto_58
    new-instance v10, Lorg/apache/http/util/VersionInfo;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lorg/apache/http/util/VersionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 289
    .end local v0    # "module":Ljava/lang/String;
    .end local v1    # "release":Ljava/lang/String;
    .end local v2    # "timestamp":Ljava/lang/String;
    .end local v9    # "clsldrstr":Ljava/lang/String;
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package identifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;
    .registers 6
    .param p0, "pckg"    # Ljava/lang/String;
    .param p1, "clsldr"    # Ljava/lang/ClassLoader;

    .line 241
    if-eqz p0, :cond_51

    .line 246
    if-nez p1, :cond_c

    .line 247
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 249
    :cond_c
    const/4 v0, 0x0

    .line 253
    .local v0, "vip":Ljava/util/Properties;
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    .line 254
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "version.properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_48

    .line 255
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_47

    .line 257
    :try_start_34
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 258
    .local v2, "props":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_41

    .line 259
    move-object v0, v2

    .line 261
    .end local v2    # "props":Ljava/util/Properties;
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 262
    goto :goto_47

    .line 261
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 262
    nop

    .end local v0    # "vip":Ljava/util/Properties;
    .end local p0    # "pckg":Ljava/lang/String;
    .end local p1    # "clsldr":Ljava/lang/ClassLoader;
    throw v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_47} :catch_48

    .line 266
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "vip":Ljava/util/Properties;
    .restart local p0    # "pckg":Ljava/lang/String;
    .restart local p1    # "clsldr":Ljava/lang/ClassLoader;
    :cond_47
    :goto_47
    goto :goto_49

    .line 264
    :catch_48
    move-exception v1

    .line 268
    :goto_49
    const/4 v1, 0x0

    .line 269
    .local v1, "result":Lorg/apache/http/util/VersionInfo;
    if-eqz v0, :cond_50

    .line 270
    invoke-static {p0, v0, p1}, Lorg/apache/http/util/VersionInfo;->fromMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v1

    .line 272
    :cond_50
    return-object v1

    .line 242
    .end local v0    # "vip":Ljava/util/Properties;
    .end local v1    # "result":Lorg/apache/http/util/VersionInfo;
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package identifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final loadVersionInfo([Ljava/lang/String;Ljava/lang/ClassLoader;)[Lorg/apache/http/util/VersionInfo;
    .registers 5
    .param p0, "pckgs"    # [Ljava/lang/String;
    .param p1, "clsldr"    # Ljava/lang/ClassLoader;

    .line 211
    if-eqz p0, :cond_27

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v0, "vil":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 218
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lorg/apache/http/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfo;

    move-result-object v2

    .line 219
    .local v2, "vi":Lorg/apache/http/util/VersionInfo;
    if-eqz v2, :cond_17

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v2    # "vi":Lorg/apache/http/util/VersionInfo;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 223
    .end local v1    # "i":I
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/http/util/VersionInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/http/util/VersionInfo;

    return-object v1

    .line 212
    .end local v0    # "vil":Ljava/util/ArrayList;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package identifier list must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getClassloader()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    return-object v0
.end method

.method public final getModule()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRelease()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 175
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    .line 177
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 180
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "VersionInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoPackage:Ljava/lang/String;

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/http/util/VersionInfo;->infoModule:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    const-string v3, "UNAVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/http/util/VersionInfo;->infoRelease:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    :cond_53
    iget-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_64
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    iget-object v1, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 193
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/util/VersionInfo;->infoClassloader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
