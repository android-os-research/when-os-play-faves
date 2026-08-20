.class public Lcom/android/server/policy/PhoneWindowManager$14;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 5363
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 5366
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 5367
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_2b

    .line 5368
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onDreamingStarted()V

    goto :goto_2b

    .line 5370
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 5371
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz p0, :cond_2b

    .line 5372
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onDreamingStopped()V

    :cond_2b
    :goto_2b
    return-void
.end method
