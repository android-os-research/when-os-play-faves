.class public final Lcom/android/server/uri/UriGrantsManagerService$H;
.super Landroid/os/Handler;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final PERSIST_URI_GRANTS_MSG:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 1446
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1447
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1452
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    .line 1454
    :cond_6
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V

    :goto_b
    return-void
.end method
