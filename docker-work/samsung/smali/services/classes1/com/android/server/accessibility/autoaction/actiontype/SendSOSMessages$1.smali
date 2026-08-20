.class public Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;
.super Ljava/lang/Object;
.source "SendSOSMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->performCornerAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x64

    .line 52
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-static {v0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_emergency_message_power_number"

    const/4 v2, 0x5

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->-$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, p0, :cond_35

    .line 61
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :catch_2d
    move-exception p0

    const-string v0, "SendSOSMessages"

    const-string v1, "Exception!"

    .line 64
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    return-void
.end method
