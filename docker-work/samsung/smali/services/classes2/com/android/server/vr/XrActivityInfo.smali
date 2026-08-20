.class public Lcom/android/server/vr/XrActivityInfo;
.super Ljava/lang/Object;
.source "XrActivityInfo.java"


# instance fields
.field public callingPackage:Landroid/content/ComponentName;

.field public requestedVrComponent:Landroid/content/ComponentName;

.field public taskId:I

.field public userId:I

.field public xrFlags:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    .line 21
    iput p3, p0, Lcom/android/server/vr/XrActivityInfo;->userId:I

    .line 22
    iput-object p2, p0, Lcom/android/server/vr/XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    .line 23
    iput-object p4, p0, Lcom/android/server/vr/XrActivityInfo;->callingPackage:Landroid/content/ComponentName;

    .line 24
    iput p5, p0, Lcom/android/server/vr/XrActivityInfo;->taskId:I

    return-void
.end method


# virtual methods
.method public isLowPersistenceEnabled()Z
    .registers 2

    .line 40
    iget v0, p0, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/server/vr/XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public isXrActivity()Z
    .registers 2

    .line 36
    iget v0, p0, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/server/vr/XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XrActivityInfo[xrFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrActivityInfo;->xrFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") requestedVrComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrActivityInfo;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrActivityInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vr/XrActivityInfo;->callingPackage:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
