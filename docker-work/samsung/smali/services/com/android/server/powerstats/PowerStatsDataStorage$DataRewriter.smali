.class public Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRewriter"
.end annotation


# instance fields
.field public mActiveFileData:[B

.field public mNewData:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 138
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 139
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    return-void
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public shouldWrite()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 161
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
