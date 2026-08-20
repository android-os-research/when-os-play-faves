.class public Lcom/android/server/policy/PhoneWindowManagerExt$8;
.super Landroid/os/UEventObserver;
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

    .line 4847
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$8;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 3

    if-nez p1, :cond_a

    const-string p0, "PhoneWindowManagerExt"

    const-string p1, "The event of DrmEvent is null."

    .line 4851
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string/jumbo v0, "status"

    .line 4855
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 4859
    :cond_18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$8;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v0, "connected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(Z)V

    return-void
.end method
