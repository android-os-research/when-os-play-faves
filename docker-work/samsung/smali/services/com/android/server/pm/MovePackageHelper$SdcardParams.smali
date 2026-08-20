.class public Lcom/android/server/pm/MovePackageHelper$SdcardParams;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/MovePackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdcardParams"
.end annotation


# instance fields
.field public final callingUid:I

.field public final moveId:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final user:Landroid/os/UserHandle;

.field public final volumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 7

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->this$0:Lcom/android/server/pm/MovePackageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->callingUid:I

    .line 105
    iput-object p5, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->user:Landroid/os/UserHandle;

    .line 106
    iput p6, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdcardParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PackageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Volume= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
