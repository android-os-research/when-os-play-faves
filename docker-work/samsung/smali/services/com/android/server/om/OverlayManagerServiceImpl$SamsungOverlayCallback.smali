.class public final Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$SamsungOverlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SamsungOverlayCallback"
.end annotation


# instance fields
.field public mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V
    .registers 3

    .line 1325
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    return-void
.end method


# virtual methods
.method public onSamsungOverlayPackageAdded(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSamsungOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception p0

    const-string p1, "OverlayManager"

    const-string/jumbo p2, "onPackageAdded internal error"

    .line 1335
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public onSamsungOverlayPackageChanged(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 11

    .line 1341
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSamsungOverlayPackageChanged(Ljava/lang/String;IZLandroid/content/om/ISamsungOverlayCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1347
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$SamsungOverlayCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onSamsungOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V

    return-void
.end method
