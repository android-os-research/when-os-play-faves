.class Lcom/android/commands/uiautomator/EventsCommand$1;
.super Ljava/lang/Object;
.source "EventsCommand.java"

# interfaces
.implements Landroid/app/UiAutomation$OnAccessibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/uiautomator/EventsCommand;->run([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/uiautomator/EventsCommand;


# direct methods
.method constructor <init>(Lcom/android/commands/uiautomator/EventsCommand;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/commands/uiautomator/EventsCommand;

    .line 56
    iput-object p1, p0, Lcom/android/commands/uiautomator/EventsCommand$1;->this$0:Lcom/android/commands/uiautomator/EventsCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 61
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 60
    const-string v3, "%s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    return-void
.end method
