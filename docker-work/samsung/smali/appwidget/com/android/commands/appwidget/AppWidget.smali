.class public Lcom/android/commands/appwidget/AppWidget;
.super Ljava/lang/Object;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;,
        Lcom/android/commands/appwidget/AppWidget$Tokenizer;,
        Lcom/android/commands/appwidget/AppWidget$Parser;
    }
.end annotation


# static fields
.field private static final USAGE:Ljava/lang/String; = "usage: adb shell appwidget [subcommand] [options]\n\nusage: adb shell appwidget grantbind --package <PACKAGE>  [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Grant the \"foo.bar.baz\" package to bind app widgets for the current user.\n  adb shell grantbind --package foo.bar.baz --user current\n\nusage: adb shell appwidget revokebind --package <PACKAGE> [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Revoke the permisison to bind app widgets from the \"foo.bar.baz\" package.\n  adb shell revokebind --package foo.bar.baz --user current\n\n"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/android/commands/appwidget/AppWidget$Parser;

    invoke-direct {v0, p0}, Lcom/android/commands/appwidget/AppWidget$Parser;-><init>([Ljava/lang/String;)V

    .line 162
    .local v0, "parser":Lcom/android/commands/appwidget/AppWidget$Parser;
    invoke-virtual {v0}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseCommand()Ljava/lang/Runnable;

    move-result-object v1

    .line 163
    .local v1, "command":Ljava/lang/Runnable;
    if-eqz v1, :cond_e

    .line 164
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 166
    :cond_e
    return-void
.end method
