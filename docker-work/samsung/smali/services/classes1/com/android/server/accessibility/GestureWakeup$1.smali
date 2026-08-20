.class public Lcom/android/server/accessibility/GestureWakeup$1;
.super Ljava/lang/Object;
.source "GestureWakeup.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/GestureWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 6

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getApproachContext()Lcom/samsung/android/hardware/context/SemContextApproach;

    move-result-object v0

    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextApproach;->getUserID()I

    move-result v0

    .line 128
    iget-object p1, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_59

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSContextChanged() Approach, userId : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , currentUser : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", setting : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-static {v2}, Lcom/android/server/accessibility/GestureWakeup;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/GestureWakeup;)Landroid/content/Context;

    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GestureWakeup"

    .line 129
    invoke-static {v2, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-static {p1}, Lcom/android/server/accessibility/GestureWakeup;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/GestureWakeup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_59

    if-ne v0, v1, :cond_59

    .line 132
    iget-object p0, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-static {p0}, Lcom/android/server/accessibility/GestureWakeup;->-$$Nest$mlaunchGestureWakeup(Lcom/android/server/accessibility/GestureWakeup;)V

    :cond_59
    return-void
.end method
