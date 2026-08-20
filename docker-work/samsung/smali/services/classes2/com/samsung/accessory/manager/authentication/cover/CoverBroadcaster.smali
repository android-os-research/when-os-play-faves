.class public Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;
.super Ljava/lang/Object;
.source "CoverBroadcaster.java"


# static fields
.field public static final ACTION_COVER_ATTACH_CHANGED:Ljava/lang/String; = "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

.field public static final EXTRA_COVER_ATTACH:Ljava/lang/String; = "attach"

.field public static final EXTRA_REAL_COVER_TYPE:Ljava/lang/String; = "real_cover_type"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mRealCoverType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 16
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 19
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public broadcastCoverAttachStatus(Z)V
    .registers 4

    if-nez p1, :cond_5

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 35
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "attach"

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    iget p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    const-string/jumbo v1, "real_cover_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android"

    .line 39
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getRealCoverType()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    return p0
.end method

.method public setRealCoverType(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    return-void
.end method
