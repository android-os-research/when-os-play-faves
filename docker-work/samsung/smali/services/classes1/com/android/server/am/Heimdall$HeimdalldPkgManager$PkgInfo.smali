.class public Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall$HeimdalldPkgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgInfo"
.end annotation


# instance fields
.field public glbKillCnt:I

.field public memUsage:I

.field public pkgName:Ljava/lang/String;

.field public realKillCnt:I

.field public specKillCnt:I

.field public version:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mtoJsonData(Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->toJsonData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 225
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 227
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 228
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    const/4 v0, 0x2

    .line 229
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    const/4 v0, 0x3

    .line 230
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    const/4 v0, 0x4

    .line 231
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    const/4 v0, 0x5

    .line 232
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 6

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    .line 215
    iput-object p2, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    .line 216
    iput p3, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    xor-int/lit8 p1, p4, 0x1

    .line 217
    iput p1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 218
    iput p4, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 219
    iput p5, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 238
    :cond_4
    instance-of v1, p1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    check-cast p1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;

    iget-object v2, p1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 244
    iget-object p0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toJsonData()Ljava/lang/String;
    .registers 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"pkgName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"version\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"memUsage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 260
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"specKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 261
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"glbKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 262
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"realKillCnt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 263
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->memUsage:I

    .line 251
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->specKillCnt:I

    .line 252
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->glbKillCnt:I

    .line 253
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/Heimdall$HeimdalldPkgManager$PkgInfo;->realKillCnt:I

    .line 254
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
