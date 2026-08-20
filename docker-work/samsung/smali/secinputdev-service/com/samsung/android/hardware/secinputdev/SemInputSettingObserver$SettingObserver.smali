.class Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;
.super Landroid/database/ContentObserver;
.source "SemInputSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final defaultValue:I

.field private final handler:Landroid/os/Handler;

.field private final key:Ljava/lang/String;

.field private final messageWhat:I

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;Landroid/os/Handler;ILjava/lang/String;I)V
    .registers 6
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "defaultValue"    # I

    .line 123
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    .line 124
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    .line 126
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->messageWhat:I

    .line 127
    iput-object p4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    .line 128
    iput p5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->defaultValue:I

    .line 129
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->update()V

    .line 134
    return-void
.end method

.method public update()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->messageWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->messageWhat:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_23

    .line 139
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->defaultValue:I

    .line 139
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_51

    .line 141
    :cond_23
    const/16 v2, 0x64

    const/4 v3, -0x2

    if-le v1, v2, :cond_3d

    .line 142
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->defaultValue:I

    .line 142
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_51

    .line 145
    :cond_3d
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;

    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;->-$$Nest$fgetcontext(Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver;)Landroid/content/Context;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->key:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->defaultValue:I

    .line 145
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 148
    :goto_51
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputSettingObserver$SettingObserver;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method
