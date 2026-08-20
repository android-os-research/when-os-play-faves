.class Lcom/sec/android/iaft/IAFDServiceImpl$1;
.super Ljava/lang/Object;
.source "IAFDServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;->showSystemAppDiaglog(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method constructor blacklist <init>(Lcom/sec/android/iaft/IAFDServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/android/iaft/IAFDServiceImpl;

    .line 211
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$1;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 215
    return-void
.end method
