.class public Lcom/android/server/textclassifier/TextClassificationManagerService$1;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onFailure()V
    .registers 1

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
