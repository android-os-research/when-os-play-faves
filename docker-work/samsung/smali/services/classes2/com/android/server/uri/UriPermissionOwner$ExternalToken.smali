.class public Lcom/android/server/uri/UriPermissionOwner$ExternalToken;
.super Landroid/os/Binder;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermissionOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalToken"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriPermissionOwner;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/android/server/uri/UriPermissionOwner;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    return-object p0
.end method
