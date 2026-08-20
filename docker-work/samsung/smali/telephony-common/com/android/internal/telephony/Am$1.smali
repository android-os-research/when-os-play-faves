.class Lcom/android/internal/telephony/Am$1;
.super Landroid/os/ResultReceiver;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Am;->runAmCmd([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/Am;Landroid/os/Handler;)V
    .registers 3

    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/Am$1;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
