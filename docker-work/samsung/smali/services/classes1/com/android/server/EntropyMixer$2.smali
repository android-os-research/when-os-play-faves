.class public Lcom/android/server/EntropyMixer$2;
.super Landroid/content/BroadcastReceiver;
.source "EntropyMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EntropyMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/EntropyMixer;


# direct methods
.method public constructor <init>(Lcom/android/server/EntropyMixer;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 104
    iget-object p0, p0, Lcom/android/server/EntropyMixer$2;->this$0:Lcom/android/server/EntropyMixer;

    invoke-static {p0}, Lcom/android/server/EntropyMixer;->-$$Nest$mupdateSeedFile(Lcom/android/server/EntropyMixer;)V

    return-void
.end method
