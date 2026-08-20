.class public Lcom/android/server/usb/UsbHostRestrictor$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string p1, "UsbHostRestrictor"

    const-string v0, "UsbHostRestrictionReceiver Receiver onReceive"

    .line 102
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    const-string v2, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    const-string v3, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    const-string v4, "ON_ALL"

    const-string v5, "OFF"

    if-nez p2, :cond_7e

    const-string p2, "UsbHostRestrictionReceiver : reason - ALLOW"

    .line 111
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 114
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p2

    .line 116
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 117
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string p0, "UsbHostRestrictionReceiver USB is already UNBLOCKED"

    .line 118
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 119
    :cond_50
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 120
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    .line 121
    :cond_61
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 122
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 125
    :cond_71
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result p0

    if-nez p0, :cond_12c

    .line 126
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    :cond_7e
    const/4 v6, 0x1

    if-ne p2, v6, :cond_c2

    const-string p2, "UsbHostRestrictionReceiver : reason - DISALLOW"

    .line 129
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 132
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p2

    .line 134
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 136
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c

    :cond_a8
    const-string v0, "ON_HOST_MDM"

    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    const-string v0, "UsbHostRestrictionReceiver BLOCK USB HOST"

    .line 138
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_12c

    :cond_bc
    const-string p0, "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE"

    .line 142
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    :cond_c2
    const/4 v7, 0x2

    if-ne p2, v7, :cond_127

    const-string p2, "UsbHostRestrictionReceiver : reason - INIT"

    .line 147
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_12c

    .line 151
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p2

    if-eqz p2, :cond_12c

    .line 153
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result p2

    if-ne p2, v6, :cond_121

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfgetisMDMBlock()Z

    move-result p2

    if-eqz p2, :cond_121

    const-string p2, "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST"

    .line 154
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$sfputisMDMBlock(Z)V

    .line 157
    iget-object p2, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mcheckWriteValue(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object p2

    .line 159
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mgetUsbHostDisableSysNodeWritable(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 160
    iget-object v1, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mreadDisableSysNodefromFile(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 161
    invoke-static {p1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    .line 162
    :cond_10e
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 163
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$1;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {p0, p2}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mwriteDisableSysNodetoFile(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_12c

    .line 167
    :cond_11d
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    :cond_121
    const-string p0, "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos"

    .line 170
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c

    :cond_127
    const-string p0, "UsbHostRestrictionReceiver reason is unknown."

    .line 175
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12c
    :goto_12c
    return-void
.end method
