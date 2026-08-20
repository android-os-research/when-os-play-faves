.class public Lcom/android/server/accounts/AccountManagerService$NotificationId;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationId"
.end annotation


# instance fields
.field public final mId:I

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 6737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6738
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 6739
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return-void
.end method
