.class public Lcom/android/server/ExtendedEthernetService$1$1;
.super Ljava/lang/Object;
.source "ExtendedEthernetService.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ExtendedEthernetService$1;->onAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/ExtendedEthernetService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetService$1;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService$1$1;->this$1:Lcom/android/server/ExtendedEthernetService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .registers 3

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTetheringFailed resultCode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtendedEthernetService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
