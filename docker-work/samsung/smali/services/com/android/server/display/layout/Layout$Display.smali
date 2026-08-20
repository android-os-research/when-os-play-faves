.class public Lcom/android/server/display/layout/Layout$Display;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/layout/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public final mIsEnabled:Z

.field public final mLogicalDisplayId:I


# direct methods
.method public constructor <init>(Landroid/view/DisplayAddress;IZ)V
    .registers 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 218
    iput p2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 219
    iput-boolean p3, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public getAddress()Landroid/view/DisplayAddress;
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    return-object p0
.end method

.method public getLogicalDisplayId()I
    .registers 1

    .line 233
    iget p0, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    return p0
.end method

.method public getPort()I
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_d

    .line 243
    check-cast p0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 237
    iget-boolean p0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dispId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-boolean p0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz p0, :cond_26

    const-string p0, "ON"

    goto :goto_28

    :cond_26
    const-string p0, "OFF"

    :goto_28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
