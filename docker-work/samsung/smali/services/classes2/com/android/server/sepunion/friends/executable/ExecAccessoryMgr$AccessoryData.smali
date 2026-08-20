.class public final Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;
.super Ljava/lang/Object;
.source "ExecAccessoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessoryData"
.end annotation


# instance fields
.field public mActionNo:I

.field public mBundle:Landroid/os/Bundle;

.field public mOriginalAccessoryId:Ljava/lang/String;

.field public mVerifyRequired:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActionNo(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)I
    .registers 1

    iget p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBundle(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOriginalAccessoryId(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVerifyRequired(Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    return p0
.end method

.method public constructor <init>(IZLandroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mActionNo:I

    .line 376
    iput-boolean p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mVerifyRequired:Z

    .line 377
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mBundle:Landroid/os/Bundle;

    .line 378
    iput-object p4, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;->mOriginalAccessoryId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IZLandroid/os/Bundle;Ljava/lang/String;Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/friends/executable/ExecAccessoryMgr$AccessoryData;-><init>(IZLandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
