.class public Lcom/android/server/power/Notifier$2;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;

.field public final synthetic val$wakefulness:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;I)V
    .registers 3

    .line 500
    iput-object p1, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$2;->val$wakefulness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/android/server/power/Notifier$2;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/Notifier$2;->val$wakefulness:I

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    return-void
.end method
