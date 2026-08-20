.class public Lcom/android/commands/monkey/MonkeyFlipEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyFlipEvent.java"


# static fields
.field private static final FLIP_0:[B

.field private static final FLIP_1:[B


# instance fields
.field private final mKeyboardOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x7ft
        0x6t
        0x0t
        0x0t
        -0x20t
        0x39t
        0x1t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        -0x7bt
        0x6t
        0x0t
        0x0t
        -0x61t
        -0x5bt
        0xct
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "keyboardOpen"    # Z

    .line 55
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 56
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    .line 57
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 8
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .line 61
    if-lez p3, :cond_1c

    .line 62
    sget-object v0, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":Sending Flip keyboardOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 67
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "/dev/input/event0"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "f":Ljava/io/FileOutputStream;
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    goto :goto_2c

    :cond_2a
    sget-object v1, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_32} :catch_34

    .line 70
    const/4 v1, 0x1

    return v1

    .line 71
    .end local v0    # "f":Ljava/io/FileOutputStream;
    :catch_34
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IOException performing flip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    .line 73
    const/4 v1, 0x0

    return v1
.end method
