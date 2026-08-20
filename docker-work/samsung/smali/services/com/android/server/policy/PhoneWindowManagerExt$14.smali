.class public Lcom/android/server/policy/PhoneWindowManagerExt$14;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 5849
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 5851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.android.motion.PALM_SCREEN_OFF"

    .line 5852
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 5853
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string p2, "PhoneWindowManagerExt"

    if-eqz p1, :cond_2d

    .line 5854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mIsPalmTouchDownToSleep="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmIsPalmTouchDownToSleep(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    :cond_2d
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$fgetmIsPalmTouchDownToSleep(Lcom/android/server/policy/PhoneWindowManagerExt;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 5857
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_3e

    const-string p1, "Going to sleep by palm touch down"

    .line 5858
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    :cond_3e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$14;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    :cond_4c
    return-void
.end method
