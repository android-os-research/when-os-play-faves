.class Lcom/android/commands/appwidget/AppWidget$Parser;
.super Ljava/lang/Object;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_GRANT_BIND:Ljava/lang/String; = "grantbind"

.field private static final ARGUMENT_PACKAGE:Ljava/lang/String; = "--package"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_REVOKE_BIND:Ljava/lang/String; = "revokebind"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final VALUE_USER_CURRENT:Ljava/lang/String; = "current"


# instance fields
.field private final mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "args"    # [Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    invoke-direct {v0, p1}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    .line 66
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "argument"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    invoke-static {v0}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 115
    return-object v0

    .line 113
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;
    .registers 8
    .param p1, "granted"    # Z

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 89
    .local v1, "userId":I
    :goto_2
    iget-object v2, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    invoke-static {v2}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    if-eqz v2, :cond_4c

    .line 90
    const-string v2, "--package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 91
    invoke-direct {p0, v3}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_18
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 93
    invoke-direct {p0, v3}, Lcom/android/commands/appwidget/AppWidget$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "user":Ljava/lang/String;
    const-string v4, "current"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 95
    const/4 v1, -0x2

    goto :goto_32

    .line 97
    :cond_2e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .end local v2    # "user":Ljava/lang/String;
    :goto_32
    goto :goto_2

    .line 100
    :cond_33
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v3    # "argument":Ljava/lang/String;
    :cond_4c
    if-eqz v0, :cond_54

    .line 107
    new-instance v2, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    invoke-direct {v2, v0, p1, v1}, Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;-><init>(Ljava/lang/String;ZI)V

    return-object v2

    .line 104
    :cond_54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Package name not specified. Did you specify --package argument?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public parseCommand()Ljava/lang/Runnable;
    .registers 5

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/appwidget/AppWidget$Parser;->mTokenizer:Lcom/android/commands/appwidget/AppWidget$Tokenizer;

    invoke-static {v0}, Lcom/android/commands/appwidget/AppWidget$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/appwidget/AppWidget$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "operation":Ljava/lang/String;
    const-string v1, "grantbind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 72
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    move-result-object v1

    return-object v1

    .line 73
    :cond_14
    const-string v1, "revokebind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 74
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/commands/appwidget/AppWidget$Parser;->parseSetGrantBindAppWidgetPermissionCommand(Z)Lcom/android/commands/appwidget/AppWidget$SetBindAppWidgetPermissionCommand;

    move-result-object v1

    return-object v1

    .line 76
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/commands/appwidget/AppWidget$Parser;
    throw v1
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3b} :catch_3b

    .line 78
    .end local v0    # "operation":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/commands/appwidget/AppWidget$Parser;
    :catch_3b
    move-exception v0

    .line 79
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "usage: adb shell appwidget [subcommand] [options]\n\nusage: adb shell appwidget grantbind --package <PACKAGE>  [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Grant the \"foo.bar.baz\" package to bind app widgets for the current user.\n  adb shell grantbind --package foo.bar.baz --user current\n\nusage: adb shell appwidget revokebind --package <PACKAGE> [--user <USER_ID> | current]\n  <PACKAGE> an Android package name.\n  <USER_ID> The user id under which the package is installed.\n  Example:\n  # Revoke the permisison to bind app widgets from the \"foo.bar.baz\" package.\n  adb shell revokebind --package foo.bar.baz --user current\n\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    return-object v1
.end method
