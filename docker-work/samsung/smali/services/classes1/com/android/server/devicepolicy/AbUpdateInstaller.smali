.class public Lcom/android/server/devicepolicy/AbUpdateInstaller;
.super Lcom/android/server/devicepolicy/UpdateInstaller;
.source "AbUpdateInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_STATE_INITIALIZATION_ERROR:I = 0x14

.field public static final OFFSET_TO_FILE_NAME:I = 0x1e

.field public static final PAYLOAD_BIN:Ljava/lang/String; = "payload.bin"

.field public static final PAYLOAD_PROPERTIES_TXT:Ljava/lang/String; = "payload_properties.txt"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "Unknown error with error code = "

.field public static final errorCodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final errorStringsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEntries:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mOffsetForUpdate:J

.field public mPackedUpdateFile:Ljava/util/zip/ZipFile;

.field public mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSizeForUpdate:J

.field public mUpdateInstalled:Z


# direct methods
.method public static synthetic $r8$lambda$8Vpkubx-zNyIR2QPZ5tk-fMqRmQ(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->lambda$applyPayload$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgeterrorCodesMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgeterrorStringsMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildErrorCodesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildErrorStringsMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .registers 6

    .line 147
    invoke-direct/range {p0 .. p5}, Lcom/android/server/devicepolicy/UpdateInstaller;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    return-void
.end method

.method public static buildErrorCodesMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x14

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 68
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x33

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 76
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 79
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1a

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 100
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x34

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static buildErrorStringsMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown error with error code = "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The delta update payload was targeted for another version or the source partitionwas modified after it was installed"

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to finish the configured postinstall works."

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to open one of the partitions it tried to write to or read data from."

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Payload mismatch error."

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to read the payload data from the given URL."

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Payload hash error."

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Payload size mismatch error."

    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to verify the signature of the payload."

    .line 134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x34

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The payload has been successfully installed,but the active slot was not flipped."

    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic lambda$applyPayload$0(I)[Ljava/lang/String;
    .registers 1

    .line 191
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final applyPayload(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->updateStateForPayload()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ljava/lang/String;

    .line 192
    iget-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v8, "UpdateInstaller"

    if-nez v0, :cond_2d

    const-string p1, "Failed to find payload entry in the given package."

    .line 193
    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    return-void

    .line 200
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildBoundUpdateEngine()Landroid/os/UpdateEngine;

    move-result-object v1

    .line 202
    :try_start_31
    iget-wide v3, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    iget-wide v5, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/os/UpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_44

    :catch_3a
    move-exception p1

    const-string v0, "Failed to install update from file."

    .line 207
    invoke-static {v8, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    :goto_44
    return-void
.end method

.method public final buildBoundUpdateEngine()Landroid/os/UpdateEngine;
    .registers 3

    .line 182
    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    .line 183
    new-instance v1, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;-><init>(Lcom/android/server/devicepolicy/UpdateInstaller;Landroid/os/UpdateEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    return-object v0
.end method

.method public final buildOffsetForEntry(Ljava/util/zip/ZipEntry;Ljava/lang/String;)J
    .registers 7

    .line 243
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1e

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 244
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_19

    :cond_14
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object p0

    array-length p0, p0

    :goto_19
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public installUpdateInThread()V
    .registers 4

    const-string v0, "UpdateInstaller"

    .line 153
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    if-nez v1, :cond_3c

    .line 157
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->setState()V

    .line 158
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->applyPayload(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_21} :catch_2f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_22

    goto :goto_3b

    :catch_22
    move-exception v1

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 168
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    goto :goto_3b

    :catch_2f
    move-exception v1

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    .line 163
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    :goto_3b
    return-void

    .line 154
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "installUpdateInThread can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setState()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 174
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 176
    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    .line 178
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    return-void
.end method

.method public final updatePropertiesForEntry(Ljava/util/zip/ZipEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 249
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 254
    iget-object v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_20

    goto :goto_10

    .line 256
    :cond_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_20
    move-exception p0

    .line 248
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
.end method

.method public final updateStateForPayload()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 216
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 217
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 219
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {p0, v2, v3}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildOffsetForEntry(Ljava/util/zip/ZipEntry;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 221
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 222
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_27
    const-string/jumbo v4, "payload.bin"

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 226
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "UpdateInstaller"

    const-string v1, "Invalid compression method."

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 233
    :cond_43
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 234
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    goto :goto_2

    :cond_52
    const-string/jumbo v4, "payload_properties.txt"

    .line 235
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->updatePropertiesForEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_2

    :cond_5f
    const/4 p0, 0x1

    return p0
.end method
