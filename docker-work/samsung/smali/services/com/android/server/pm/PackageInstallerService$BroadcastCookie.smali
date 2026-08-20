.class public final Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastCookie"
.end annotation


# instance fields
.field public final callingUid:I

.field public final userCheck:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(ILjava/util/function/IntPredicate;)V
    .registers 3

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1704
    iput p1, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    .line 1705
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    return-void
.end method
