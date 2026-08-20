.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    .line 82
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    :try_start_d
    new-instance v0, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1a} :catch_39
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_30

    .line 92
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 95
    :try_start_20
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_23} :catch_39
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_30

    return-object p0

    :catchall_24
    move-exception p0

    .line 84
    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v1

    .line 95
    :try_start_27
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v1
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_30} :catch_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_30} :catch_30

    :catch_30
    move-exception p0

    .line 98
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    const-string v1, "IOException while reading or closing cloned object data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_39
    move-exception p0

    .line 96
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    const-string v1, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The InputStream must not be null"

    .line 189
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :try_start_8
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_d} :catch_21
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_21

    .line 192
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 194
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_21

    return-object p0

    :catchall_15
    move-exception p0

    .line 190
    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    .line 194
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    :try_start_1d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v1
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_21} :catch_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    .line 195
    new-instance v0, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The byte[] must not be null"

    .line 218
    invoke-static {p0, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The OutputStream must not be null"

    .line 136
    invoke-static {p1, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :try_start_8
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_20

    .line 138
    :try_start_d
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 139
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_20

    return-void

    :catchall_14
    move-exception p0

    .line 137
    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    .line 139
    :try_start_17
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    .line 140
    new-instance p1, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3

    .line 153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
