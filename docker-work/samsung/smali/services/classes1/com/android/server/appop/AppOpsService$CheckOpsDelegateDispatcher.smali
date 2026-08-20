.class public final Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckOpsDelegateDispatcher"
.end annotation


# instance fields
.field public final mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field public final mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$2qkZ7YXEZeVzeQ0AxDdpu14qswU(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$finishDelegateProxyOperationImpl$15(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3tUsmZ2jKviJf4txmvU1qDPe1hs(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$checkAudioOperation$2(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4Xrg3LJImAePkUNQfKyEhwrAa4o(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5QW1I627hxspeCV4Tl3zmfvAQEc(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6iUzpqAsrHNNZAT8wDQs4LrRyi8(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IIILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DDX2eMIBvr5VvqZEyItwyBHWmUo(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$finishProxyOperation$14(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DNTiX6LDOjEcXWX8-0kPsIyHzfc(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$noteDelegateOperationImpl$5(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DtgeSBUWCLclQ1W7XJUC9XAaSEw(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gc4PFB4I6q8dwMdKLBLvNRVXSBU(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KrwrxMLmGzFSEjEyo0aJ63o5J9E(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$checkOperation$0(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P0l3AhGdLBUsDdLvP72L7r3swTs(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$startDelegateProxyOperationImpl$11(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PbpU3Eszve011DPcjUEqveXh3R0(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U-QmWSNJx0jwkHWzevpMhS96JFs(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$finishOperation$12(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1N8Tm6ojEhXWwzroaBT9FBvehY(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$noteProxyOperation$6(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Yy4tplRQs6mab0ahVGvJRXQBMm4(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$startProxyOperation$10(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_SlBzLw62YEU0zLxyRCRyNNh8uE(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$startDelegateOperationImpl$9(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h4Y1J95jXTZ-vYG8mmTuo5sNQCE(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$startOperation$8(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iK5i_n5muz9COhaFfVEJ_PbNrwY(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$checkDelegateAudioOperationImpl$3(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$izzNLdqOHikwSD80oD3sl-d6hlo(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$noteDelegateProxyOperationImpl$7(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$miO9eAps5f-PGP9N8HQxI5gogDo(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oOwUoG55BBmJ6yiwhp3OAq3tQ30(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$noteOperation$4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qgEIsDn8cQwu53qlXknjwBl6E_g(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wkM49F6LHRsxIlPbiyrH6FgkInI(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$finishDelegateOperationImpl$13(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zbtqEwLyBWWeUIq28nYlFkcKHj0(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->lambda$checkDelegateOperationImpl$1(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckOpsDelegate(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicy(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .registers 4

    .line 7865
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7866
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7867
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-void
.end method

.method public static synthetic lambda$checkAudioOperation$2(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 7903
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$checkDelegateAudioOperationImpl$3(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 7914
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$checkDelegateOperationImpl$1(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 6

    .line 7893
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$checkOperation$0(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .registers 6

    .line 7882
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$finishDelegateOperationImpl$13(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 8076
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$finishDelegateProxyOperationImpl$15(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    .line 8100
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$finishOperation$12(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 8064
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$finishProxyOperation$14(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 5

    .line 8087
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$noteDelegateOperationImpl$5(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    .line 7944
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$noteDelegateProxyOperationImpl$7(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    .line 7975
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$noteOperation$4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 8

    .line 7928
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$noteProxyOperation$6(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 7

    .line 7958
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startDelegateOperationImpl$9(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 8012
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startDelegateProxyOperationImpl$11(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 8053
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startOperation$8(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 7993
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startProxyOperation$10(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 12

    .line 8032
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .registers 11

    .line 7897
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_26

    .line 7898
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_16

    .line 7899
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0

    .line 7902
    :cond_16
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0

    .line 7905
    :cond_26
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2f

    .line 7906
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0

    .line 7908
    :cond_2f
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckAudioOperationImpl(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final checkDelegateAudioOperationImpl(IIILjava/lang/String;)I
    .registers 11

    .line 7913
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result p0

    return p0
.end method

.method public final checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    .line 7892
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result p0

    return p0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    .line 7876
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_28

    .line 7877
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_17

    .line 7878
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result p0

    return p0

    .line 7881
    :cond_17
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result p0

    return p0

    .line 7884
    :cond_28
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_31

    .line 7885
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    .line 7887
    :cond_31
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mcheckOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 8075
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    return-void
.end method

.method public final finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .registers 11

    .line 8099
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 8058
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_26

    .line 8059
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_16

    .line 8060
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_38

    .line 8063
    :cond_16
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_38

    .line 8066
    :cond_26
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2e

    .line 8067
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 8069
    :cond_2e
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    .registers 11

    .line 8081
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_24

    .line 8082
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_15

    .line 8083
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    goto :goto_31

    .line 8086
    :cond_15
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V

    goto :goto_31

    .line 8089
    :cond_24
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2c

    .line 8090
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    goto :goto_31

    .line 8093
    :cond_2c
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mfinishProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    :goto_31
    return-void
.end method

.method public getCheckOpsDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .registers 1

    .line 7871
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object p0
.end method

.method public final noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 17

    move-object v0, p0

    .line 7942
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v8, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 15

    .line 7973
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .registers 17

    move-object v0, p0

    .line 7920
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_31

    .line 7921
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_1c

    .line 7922
    new-instance v8, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7926
    :cond_1c
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v8, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7930
    :cond_31
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_3a

    .line 7931
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7934
    :cond_3a
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteOperationImpl(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .registers 15

    .line 7950
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2a

    .line 7951
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_18

    .line 7952
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0

    .line 7956
    :cond_18
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0

    .line 7960
    :cond_2a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_33

    .line 7961
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0

    .line 7965
    :cond_33
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mnoteProxyOperationImpl(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public final startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 25

    move-object v0, p0

    .line 8010
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;

    invoke-direct {v12, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public final startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 25

    move-object v0, p0

    .line 8050
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v12, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .registers 25

    move-object v0, p0

    .line 7983
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_49

    .line 7984
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_28

    .line 7985
    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;

    invoke-direct {v12, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7990
    :cond_28
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;

    invoke-direct {v12, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7995
    :cond_49
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_52

    .line 7996
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 8000
    :cond_52
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .registers 25

    move-object v0, p0

    .line 8020
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_49

    .line 8021
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_28

    .line 8022
    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 8028
    :cond_28
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v0, v1

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 8034
    :cond_49
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_52

    .line 8035
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 8040
    :cond_52
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v12}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mstartProxyOperationImpl(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method
