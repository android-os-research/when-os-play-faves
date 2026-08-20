.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field public static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field public static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field public static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"


# instance fields
.field public final mBinderService:Landroid/app/INotificationManager;

.field public mChannel:Landroid/app/NotificationChannel;

.field public final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field public final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 124
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public checkShellCommandPermission(I)Z
    .registers 2

    if-eqz p1, :cond_9

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public final doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 474
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 475
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 476
    new-instance v11, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v11, v10, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 487
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    const/16 v17, 0x3

    if-eqz v3, :cond_44b

    .line 489
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x4

    const/4 v5, 0x2

    const/4 v12, 0x1

    sparse-switch v18, :sswitch_data_4f8

    goto/16 :goto_195

    :sswitch_37
    const-string/jumbo v13, "large-icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x9

    goto/16 :goto_196

    :sswitch_44
    const-string v13, "--verbose"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    move v3, v12

    goto/16 :goto_196

    :sswitch_4f
    const-string v13, "--line"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x18

    goto/16 :goto_196

    :sswitch_5b
    const-string v13, "--icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xb

    goto/16 :goto_196

    :sswitch_67
    const-string v13, "--help"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x1c

    goto/16 :goto_196

    :sswitch_73
    const-string v13, "--bigtext"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x15

    goto/16 :goto_196

    :sswitch_7f
    const-string v13, "--bigText"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x14

    goto/16 :goto_196

    :sswitch_8b
    const-string v13, "--largeicon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/4 v3, 0x7

    goto/16 :goto_196

    :sswitch_96
    const-string v13, "--intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x10

    goto/16 :goto_196

    :sswitch_a2
    const-string v13, "--picture"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x17

    goto/16 :goto_196

    :sswitch_ae
    const-string/jumbo v13, "largeicon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x8

    goto/16 :goto_196

    :sswitch_bb
    const-string v13, "--content-intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xe

    goto/16 :goto_196

    :sswitch_c7
    const-string v13, "--big-text"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x16

    goto/16 :goto_196

    :sswitch_d3
    const-string/jumbo v13, "title"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    move/from16 v3, v19

    goto/16 :goto_196

    :sswitch_e0
    const-string v13, "--wtf"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x1d

    goto/16 :goto_196

    :sswitch_ec
    const-string/jumbo v13, "icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xc

    goto/16 :goto_196

    :sswitch_f9
    const-string v13, "-v"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/4 v3, 0x0

    goto/16 :goto_196

    :sswitch_104
    const-string v13, "-t"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    move v3, v5

    goto/16 :goto_196

    :sswitch_10f
    const-string v13, "-i"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xa

    goto/16 :goto_196

    :sswitch_11b
    const-string v13, "-h"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x1b

    goto/16 :goto_196

    :sswitch_127
    const-string v13, "-c"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xd

    goto/16 :goto_196

    :sswitch_133
    const-string v13, "-S"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x12

    goto :goto_196

    :sswitch_13e
    const-string v13, "-I"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/4 v3, 0x5

    goto :goto_196

    :sswitch_148
    const-string v13, "--large-icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/4 v3, 0x6

    goto :goto_196

    :sswitch_152
    const-string v13, "--conversation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x1a

    goto :goto_196

    :sswitch_15d
    const-string/jumbo v13, "intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x11

    goto :goto_196

    :sswitch_169
    const-string v13, "content-intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0xf

    goto :goto_196

    :sswitch_174
    const-string v13, "--title"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    move/from16 v3, v17

    goto :goto_196

    :sswitch_17f
    const-string v13, "--style"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x13

    goto :goto_196

    :sswitch_18a
    const-string v13, "--message"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_195

    const/16 v3, 0x19

    goto :goto_196

    :cond_195
    :goto_195
    const/4 v3, -0x1

    :goto_196
    packed-switch v3, :pswitch_data_572

    .line 649
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :pswitch_19e
    if-eqz v6, :cond_1a9

    .line 643
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    goto/16 :goto_272

    .line 640
    :cond_1a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--conversation requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b1
    if-eqz v6, :cond_1fa

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    .line 626
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 627
    array-length v4, v3

    if-le v4, v12, :cond_1cf

    .line 628
    aget-object v4, v3, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v17, 0x0

    aget-object v3, v3, v17

    invoke-virtual {v6, v4, v12, v13, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    goto/16 :goto_272

    :cond_1cf
    const/16 v17, 0x0

    .line 631
    aget-object v3, v3, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-array v4, v5, [Ljava/lang/String;

    .line 633
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    const-string v17, "Them"

    const/16 v21, 0x1

    aput-object v17, v4, v21

    .line 635
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    rem-int/lit8 v17, v17, 0x2

    aget-object v4, v4, v17

    .line 631
    invoke-virtual {v6, v3, v12, v13, v4}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    goto/16 :goto_272

    .line 622
    :cond_1fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--message requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_202
    if-eqz v7, :cond_20c

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_272

    .line 616
    :cond_20c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--line requires --style inbox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_214
    if-eqz v15, :cond_261

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_24a

    .line 607
    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 608
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_232

    .line 609
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_272

    .line 611
    :cond_232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_24a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad picture spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--picture requires --style bigpicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_269
    if-eqz v8, :cond_27b

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :goto_272
    move-object v13, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const/16 v17, 0x0

    goto/16 :goto_437

    .line 594
    :cond_27b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--bigtext requires --style bigtext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_283
    move/from16 v21, v12

    .line 559
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5ac

    :goto_297
    const/16 v17, -0x1

    goto :goto_2d5

    :sswitch_29a
    const-string/jumbo v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a4

    goto :goto_297

    :cond_2a4
    move/from16 v17, v19

    goto :goto_2d5

    :sswitch_2a7
    const-string/jumbo v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d5

    goto :goto_297

    :sswitch_2b1
    const-string v4, "bigpicture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ba

    goto :goto_297

    :cond_2ba
    move/from16 v17, v5

    goto :goto_2d5

    :sswitch_2bd
    const-string v4, "bigtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c6

    goto :goto_297

    :cond_2c6
    move/from16 v17, v21

    goto :goto_2d5

    :sswitch_2c9
    const-string/jumbo v4, "messaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d3

    goto :goto_297

    :cond_2d3
    const/16 v17, 0x0

    :cond_2d5
    :goto_2d5
    packed-switch v17, :pswitch_data_5c2

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized notification style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :pswitch_2f0
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 585
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_33f

    .line 570
    :pswitch_2f9
    new-instance v7, Landroid/app/Notification$InboxStyle;

    invoke-direct {v7}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 571
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_33f

    .line 566
    :pswitch_302
    new-instance v15, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 567
    invoke-virtual {v11, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_33f

    .line 562
    :pswitch_30b
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 563
    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_33f

    .line 575
    :pswitch_314
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_328

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_32a

    :cond_328
    const-string v3, "You"

    .line 579
    :goto_32a
    new-instance v6, Landroid/app/Notification$MessagingStyle;

    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    .line 580
    invoke-virtual {v4, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 581
    invoke-virtual {v11, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_33f
    const/16 v17, 0x0

    goto/16 :goto_1f

    :pswitch_343
    move/from16 v21, v12

    .line 528
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string/jumbo v12, "service"

    const-string v13, "broadcast"

    sparse-switch v4, :sswitch_data_5d0

    :goto_358
    const/4 v5, -0x1

    goto :goto_375

    :sswitch_35a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_375

    goto :goto_358

    :sswitch_361
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_368

    goto :goto_358

    :cond_368
    move/from16 v5, v21

    goto :goto_375

    :sswitch_36b
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_374

    goto :goto_358

    :cond_374
    const/4 v5, 0x0

    :cond_375
    :goto_375
    packed-switch v5, :pswitch_data_5de

    const/4 v3, 0x0

    :goto_379
    const/4 v5, 0x0

    goto :goto_380

    .line 532
    :pswitch_37b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    goto :goto_379

    .line 534
    :goto_380
    invoke-static {v0, v5}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v4

    .line 535
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_3ac

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string/jumbo v6, "xyz:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3b0

    :cond_3ac
    move-object/from16 v19, v6

    move-object/from16 v22, v7

    .line 540
    :goto_3b0
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0xa000000

    if-eqz v5, :cond_3c8

    .line 541
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-static {v10, v5, v4, v6, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_3bf
    move-object/from16 v20, v8

    move-object/from16 v13, v19

    move-object/from16 v19, v22

    const/16 v17, 0x0

    goto :goto_3eb

    :cond_3c8
    const/4 v5, 0x0

    .line 545
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d4

    .line 546
    invoke-static {v10, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_3bf

    :cond_3d4
    const/4 v5, 0x0

    const/high16 v6, 0xa000000

    const/4 v7, 0x0

    .line 550
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v10

    move-object v13, v4

    move v4, v5

    const/16 v17, 0x0

    move-object v5, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v8

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 555
    :goto_3eb
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_437

    :pswitch_3ef
    move-object v13, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const/16 v17, 0x0

    const/4 v12, 0x0

    goto :goto_401

    :pswitch_3f8
    move-object v13, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v12

    const/16 v17, 0x0

    .line 509
    :goto_401
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 510
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-nez v4, :cond_421

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invalid icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_421
    if-eqz v12, :cond_427

    .line 516
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_437

    :cond_427
    move-object v14, v4

    goto :goto_437

    :pswitch_429
    move-object v13, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    const/16 v17, 0x0

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_437
    move-object v6, v13

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_1f

    :pswitch_43e
    move-object v13, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v12

    const/16 v17, 0x0

    move/from16 v16, v21

    goto/16 :goto_1f

    .line 654
    :cond_44b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v12, :cond_4f2

    if-nez v2, :cond_459

    goto/16 :goto_4f2

    .line 661
    :cond_459
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    if-nez v14, :cond_465

    const v2, 0x1080077

    .line 665
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_468

    .line 667
    :cond_465
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_468
    move/from16 v13, p3

    .line 670
    invoke-virtual {v0, v9, v13}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 672
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "posting:\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "posting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v6, 0x7e4

    .line 677
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object/from16 v3, p2

    move-object/from16 v4, p2

    move-object v5, v12

    .line 676
    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    if-eqz v16, :cond_4f0

    .line 680
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 681
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x7e4

    .line 680
    invoke-virtual {v2, v9, v12, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    :goto_4bb
    add-int/lit8 v3, v17, -0x1

    if-lez v17, :cond_4da

    if-eqz v2, :cond_4c2

    goto :goto_4da

    :cond_4c2
    :try_start_4c2
    const-string/jumbo v2, "waiting for notification to post..."

    .line 685
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v5, 0x1f4

    .line 686
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4cd
    .catch Ljava/lang/InterruptedException; {:try_start_4c2 .. :try_end_4cd} :catch_4cd

    .line 689
    :catch_4cd
    iget-object v2, v0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 690
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 689
    invoke-virtual {v2, v9, v12, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move/from16 v17, v3

    goto :goto_4bb

    :cond_4da
    :goto_4da
    if-nez v2, :cond_4e3

    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    .line 693
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f0

    :cond_4e3
    const-string/jumbo v0, "posted: "

    .line 695
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    const/4 v3, 0x0

    .line 696
    invoke-virtual {v2, v1, v0, v10, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_4f1

    :cond_4f0
    :goto_4f0
    const/4 v3, 0x0

    :goto_4f1
    return v3

    .line 657
    :cond_4f2
    :goto_4f2
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_4f8
    .sparse-switch
        -0x74789999 -> :sswitch_18a
        -0x603263ef -> :sswitch_17f
        -0x60295f48 -> :sswitch_174
        -0x4821dd90 -> :sswitch_169
        -0x468ec964 -> :sswitch_15d
        -0x32dd8ddd -> :sswitch_152
        -0x2bc1295 -> :sswitch_148
        0x5bc -> :sswitch_13e
        0x5c6 -> :sswitch_133
        0x5d6 -> :sswitch_127
        0x5db -> :sswitch_11b
        0x5dc -> :sswitch_10f
        0x5e7 -> :sswitch_104
        0x5e9 -> :sswitch_f9
        0x313c79 -> :sswitch_ec
        0x2906389 -> :sswitch_e0
        0x6942258 -> :sswitch_d3
        0x2a056f7a -> :sswitch_c7
        0x2a13d010 -> :sswitch_bb
        0x2d3ae234 -> :sswitch_ae
        0x302cc35e -> :sswitch_a2
        0x487e843c -> :sswitch_96
        0x4a573094 -> :sswitch_8b
        0x4bbf1cad -> :sswitch_7f
        0x4bcda88d -> :sswitch_73
        0x4f7504e1 -> :sswitch_67
        0x4f757219 -> :sswitch_5b
        0x4f76e594 -> :sswitch_4f
        0x6789dfe2 -> :sswitch_44
        0x76d66fcb -> :sswitch_37
    .end sparse-switch

    :pswitch_data_572
    .packed-switch 0x0
        :pswitch_43e
        :pswitch_43e
        :pswitch_429
        :pswitch_429
        :pswitch_429
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3ef
        :pswitch_3ef
        :pswitch_3ef
        :pswitch_343
        :pswitch_343
        :pswitch_343
        :pswitch_343
        :pswitch_343
        :pswitch_283
        :pswitch_283
        :pswitch_269
        :pswitch_269
        :pswitch_269
        :pswitch_214
        :pswitch_202
        :pswitch_1b1
        :pswitch_19e
    .end packed-switch

    :sswitch_data_5ac
    .sparse-switch
        -0x55d4c8fc -> :sswitch_2c9
        -0x6cebdd3 -> :sswitch_2bd
        -0x2a7c002 -> :sswitch_2b1
        0x5fb2286 -> :sswitch_2a7
        0x62f6fe4 -> :sswitch_29a
    .end sparse-switch

    :pswitch_data_5c2
    .packed-switch 0x0
        :pswitch_314
        :pswitch_30b
        :pswitch_302
        :pswitch_2f9
        :pswitch_2f0
    .end packed-switch

    :sswitch_data_5d0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_36b
        -0x607e173f -> :sswitch_361
        0x7643c6b5 -> :sswitch_35a
    .end sparse-switch

    :pswitch_data_5de
    .packed-switch 0x0
        :pswitch_37b
        :pswitch_37b
        :pswitch_37b
    .end packed-switch
.end method

.method public ensureChannel(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 439
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 440
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 439
    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created channel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 443
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 442
    invoke-interface {p0, p1, p2, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    .line 441
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_b

    .line 135
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 138
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const-string v6, "NotifShellCmd"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v3, :cond_1d

    :try_start_19
    const-string/jumbo v0, "root"

    goto :goto_2c

    .line 144
    :cond_1d
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 145
    array-length v9, v0

    if-lez v9, :cond_2b

    .line 146
    aget-object v0, v0, v8
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_33
    .catchall {:try_start_19 .. :try_end_2a} :catchall_30

    goto :goto_2c

    :cond_2b
    move-object v0, v7

    .line 152
    :goto_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3d

    :catchall_30
    move-exception v0

    goto/16 :goto_591

    :catch_33
    move-exception v0

    :try_start_34
    const-string v9, "failed to get caller pkg"

    .line 150
    invoke-static {v6, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_30

    .line 152
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v7

    .line 155
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 157
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: permission denied: callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callingPackage="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0xff

    return v0

    :cond_7e
    const/16 v5, 0x2d

    const/16 v6, 0x5f

    .line 166
    :try_start_82
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    sparse-switch v6, :sswitch_data_596

    goto/16 :goto_167

    :sswitch_95
    const-string v6, "allow_assistant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v9

    goto/16 :goto_168

    :sswitch_a0
    const-string/jumbo v6, "set_dnd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v8

    goto/16 :goto_168

    :sswitch_ac
    const-string v6, "disallow_listener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v10

    goto/16 :goto_168

    :sswitch_b7
    const-string/jumbo v6, "reset_assistant_user_set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/4 v5, 0x7

    goto/16 :goto_168

    :sswitch_c3
    const-string v6, "allow_dnd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v14

    goto/16 :goto_168

    :sswitch_ce
    const-string/jumbo v6, "set_bubbles"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0x9

    goto/16 :goto_168

    :sswitch_db
    const-string/jumbo v6, "post"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0xb

    goto/16 :goto_168

    :sswitch_e8
    const-string/jumbo v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0xd

    goto/16 :goto_168

    :sswitch_f5
    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0xe

    goto/16 :goto_168

    :sswitch_101
    const-string/jumbo v6, "unsnooze"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0x10

    goto :goto_168

    :sswitch_10d
    const-string/jumbo v6, "get_approved_assistant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0x8

    goto :goto_168

    :sswitch_119
    const-string v6, "disallow_dnd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v13

    goto :goto_168

    :sswitch_123
    const-string v6, "allow_listener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    move v5, v11

    goto :goto_168

    :sswitch_12d
    const-string/jumbo v6, "snooze"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0x11

    goto :goto_168

    :sswitch_139
    const-string/jumbo v6, "notify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0xc

    goto :goto_168

    :sswitch_145
    const-string v6, "disallow_assistant"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/4 v5, 0x6

    goto :goto_168

    :sswitch_14f
    const-string/jumbo v6, "set_bubbles_channel"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    const/16 v5, 0xa

    goto :goto_168

    :sswitch_15b
    const-string/jumbo v6, "snoozed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_162} :catch_570

    if-eqz v5, :cond_167

    const/16 v5, 0xf

    goto :goto_168

    :cond_167
    :goto_167
    move v5, v12

    :goto_168
    const-string v6, "Invalid assistant - must be a ComponentName"

    const-string v15, "Invalid listener - must be a ComponentName"

    packed-switch v5, :pswitch_data_5e0

    .line 427
    :try_start_16f
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_56f

    .line 371
    :pswitch_175
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_179} :catch_570

    const-string/jumbo v2, "help"

    if-nez v0, :cond_180

    move-object v0, v2

    goto :goto_18c

    :cond_180
    :try_start_180
    const-string v3, "--"

    .line 374
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 375
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_18c
    :goto_18c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_197

    goto :goto_198

    :cond_197
    move-object v2, v0

    .line 382
    :goto_198
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_608

    goto :goto_1dc

    :sswitch_1a0
    const-string v0, "context"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v8

    goto :goto_1dc

    :sswitch_1aa
    const-string v0, "criterion"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v13

    goto :goto_1dc

    :sswitch_1b4
    const-string/jumbo v0, "until"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v11

    goto :goto_1dc

    :sswitch_1bf
    const-string v0, "for"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v10

    goto :goto_1dc

    :sswitch_1c9
    const-string v0, "condition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v14

    goto :goto_1dc

    :sswitch_1d3
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    move v12, v9

    :cond_1dc
    :goto_1dc
    const-wide/16 v15, 0x0

    if-eqz v12, :cond_1f7

    if-eq v12, v14, :cond_1f7

    if-eq v12, v13, :cond_1f7

    if-eq v12, v11, :cond_1f1

    if-eq v12, v10, :cond_1f1

    if-eq v12, v9, :cond_1f1

    const-string/jumbo v0, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"

    .line 394
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    .line 391
    :cond_1f1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-object v0, v7

    goto :goto_1f9

    :cond_1f7
    move-object v0, v3

    move-wide v9, v15

    :goto_1f9
    cmp-long v6, v9, v15

    if-gtz v6, :cond_21d

    if-eqz v0, :cond_200

    goto :goto_21d

    .line 421
    :cond_200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: invalid value for --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    .line 399
    :cond_21d
    :goto_21d
    new-instance v2, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v2, v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>(Lcom/android/server/notification/NotificationShellCmd$ShellNls-IA;)V

    .line 400
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Landroid/content/ComponentName;

    .line 401
    const-class v11, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v11}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 402
    const-class v12, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    .line 400
    invoke-virtual {v2, v3, v7, v11}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 404
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationShellCmd;->waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z

    move-result v3

    if-nez v3, :cond_24c

    const-string v0, "error: could not bind a listener in time"

    .line 405
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    :cond_24c
    if-lez v6, :cond_26c

    const-string/jumbo v0, "snoozing <%s> until time: %s"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v5, v3, v8

    .line 409
    new-instance v6, Ljava/util/Date;

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v3, v14

    .line 409
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2, v5, v9, v10}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_27f

    :cond_26c
    const-string/jumbo v3, "snoozing <%s> until criterion: %s"

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v8

    aput-object v0, v6, v14

    .line 413
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2, v5, v0}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_27f
    invoke-virtual {v1, v2, v5}, Lcom/android/server/notification/NotificationShellCmd;->waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationShellCmd;->waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V

    goto/16 :goto_590

    .line 356
    :pswitch_28a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v2, "--mute"

    .line 357
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move v2, v14

    goto :goto_29d

    :cond_29c
    move v2, v8

    .line 361
    :goto_29d
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    if-eqz v3, :cond_2c3

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsnoozing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_590

    .line 365
    :cond_2c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: no snoozed otification matching key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    .line 341
    :pswitch_2d8
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 342
    invoke-virtual {v0}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_590

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 343
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " snoozed, time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 346
    invoke-virtual {v0, v7, v3, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " context="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    .line 349
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e4

    .line 329
    :pswitch_32c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v2, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_345

    const-string v0, ""

    .line 332
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v4, v0, v1, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_590

    .line 334
    :cond_345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: no active notification matching key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v14

    .line 324
    :pswitch_35a
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_366
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_590

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_366

    .line 321
    :pswitch_376
    invoke-virtual {v1, v4, v0, v3}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    goto/16 :goto_590

    .line 304
    :pswitch_37b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 307
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_39d

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 311
    :cond_39d
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v7, v0, v6, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v5}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 314
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 315
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v2, v3, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto/16 :goto_590

    .line 287
    :pswitch_3b7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v11, :cond_3eb

    if-gez v2, :cond_3c8

    goto :goto_3eb

    .line 294
    :cond_3c8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3da

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 298
    :cond_3da
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 299
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v3, v2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    goto/16 :goto_590

    :cond_3eb
    :goto_3eb
    const-string v0, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    .line 290
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 273
    :pswitch_3f1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_403

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 277
    :cond_403
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_413

    const-string/jumbo v0, "null"

    .line 279
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_590

    .line 281
    :cond_413
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_590

    .line 265
    :pswitch_41c
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42e

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 269
    :cond_42e
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    goto/16 :goto_590

    .line 252
    :pswitch_435
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_443

    .line 254
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 257
    :cond_443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_455

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    :cond_455
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_590

    .line 239
    :pswitch_45c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_46a

    .line 241
    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 244
    :cond_46a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 245
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47c

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    :cond_47c
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v14}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_590

    .line 225
    :pswitch_483
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_491

    .line 227
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 230
    :cond_491
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4a3

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    :cond_4a3
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8, v14}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_590

    .line 211
    :pswitch_4aa
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4b8

    .line 213
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    .line 216
    :cond_4b8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4ca

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    :cond_4ca
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v14, v14}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_590

    .line 201
    :pswitch_4d1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e7

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 206
    :cond_4e7
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v8}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_590

    .line 190
    :pswitch_4ee
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_504

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 195
    :cond_504
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v2, v14}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_590

    .line 168
    :pswitch_50b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_622

    goto :goto_556

    :sswitch_517
    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v8

    goto :goto_556

    :sswitch_522
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v9

    goto :goto_556

    :sswitch_52d
    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v10

    goto :goto_556

    :sswitch_537
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v14

    goto :goto_556

    :sswitch_542
    const-string/jumbo v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v13

    goto :goto_556

    :sswitch_54d
    const-string v3, "alarms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_556

    move v12, v11

    :cond_556
    :goto_556
    if-eqz v12, :cond_568

    if-eq v12, v14, :cond_568

    if-eq v12, v13, :cond_566

    if-eq v12, v11, :cond_569

    if-eq v12, v10, :cond_564

    if-eq v12, v9, :cond_564

    move v10, v8

    goto :goto_569

    :cond_564
    move v10, v14

    goto :goto_569

    :cond_566
    move v10, v13

    goto :goto_569

    :cond_568
    move v10, v11

    .line 186
    :cond_569
    :goto_569
    iget-object v1, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, v0, v10}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_56e
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_56e} :catch_570

    goto :goto_590

    :goto_56f
    return v0

    :catch_570
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred. Check logcat for details. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "NotificationService"

    const-string v2, "Error running shell command"

    .line 431
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_590
    :goto_590
    return v8

    .line 152
    :goto_591
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw v0

    nop

    :sswitch_data_596
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_15b
        -0x677a47b2 -> :sswitch_14f
        -0x4f05a8e6 -> :sswitch_145
        -0x3df868b7 -> :sswitch_139
        -0x3580721a -> :sswitch_12d
        -0x19cf0b16 -> :sswitch_123
        -0x199eb9aa -> :sswitch_119
        -0x18b58921 -> :sswitch_10d
        -0xa97a41 -> :sswitch_101
        0x18f56 -> :sswitch_f5
        0x32b09e -> :sswitch_e8
        0x3498a0 -> :sswitch_db
        0xca4be8a -> :sswitch_ce
        0x16318b24 -> :sswitch_c3
        0x28bd431f -> :sswitch_b7
        0x4af068f8 -> :sswitch_ac
        0x76556fbd -> :sswitch_a0
        0x7dcb4968 -> :sswitch_95
    .end sparse-switch

    :pswitch_data_5e0
    .packed-switch 0x0
        :pswitch_50b
        :pswitch_4ee
        :pswitch_4d1
        :pswitch_4aa
        :pswitch_483
        :pswitch_45c
        :pswitch_435
        :pswitch_41c
        :pswitch_3f1
        :pswitch_3b7
        :pswitch_37b
        :pswitch_376
        :pswitch_376
        :pswitch_35a
        :pswitch_32c
        :pswitch_2d8
        :pswitch_28a
        :pswitch_175
    .end packed-switch

    :sswitch_data_608
    .sparse-switch
        -0x76bbb26c -> :sswitch_1d3
        -0x335692e5 -> :sswitch_1c9
        0x18cc9 -> :sswitch_1bf
        0x6a47f5e -> :sswitch_1b4
        0x16e20ea1 -> :sswitch_1aa
        0x38b735af -> :sswitch_1a0
    .end sparse-switch

    :sswitch_data_622
    .sparse-switch
        -0x545a2fbe -> :sswitch_54d
        -0x4577865c -> :sswitch_542
        0xddf -> :sswitch_537
        0x179a1 -> :sswitch_52d
        0x1ad6f -> :sswitch_522
        0x33af38 -> :sswitch_517
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 2

    .line 753
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 447
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const-string p0, "/"

    .line 448
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_21
    const-string/jumbo p0, "http:"

    .line 451
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_87

    const-string/jumbo p0, "https:"

    .line 452
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_87

    const-string p0, "content:"

    .line 453
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_87

    const-string p0, "file:"

    .line 454
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_87

    const-string p0, "android.resource:"

    .line 455
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_87

    :cond_4c
    const-string p0, "@"

    .line 458
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_68

    .line 459
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "drawable"

    const-string v1, "android"

    invoke-virtual {p1, p0, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_86

    .line 462
    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_68
    const-string p0, "data:"

    .line 464
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_86

    const/16 p0, 0x2c

    .line 465
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 466
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 467
    array-length p2, p0

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_86
    return-object v0

    .line 456
    :cond_87
    :goto_87
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 457
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public final waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_20

    .line 722
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-eqz v1, :cond_13

    const-string p0, "NotifShellCmd"

    const-string p1, "Bound Shell NLS"

    .line 723
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_13
    const-wide/16 v1, 0x64

    .line 727
    :try_start_15
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v1

    .line 729
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return p0
.end method

.method public final waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V
    .registers 8

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2b

    .line 705
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 706
    array-length v2, v1

    move v3, p0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 707
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    const-wide/16 v1, 0x64

    .line 712
    :try_start_20
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v1

    .line 714
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2b
    return-void
.end method

.method public final waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V
    .registers 4

    const/4 p0, 0x0

    :goto_1
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1e

    .line 738
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v0, :cond_11

    const-string p0, "NotifShellCmd"

    const-string p1, "Unbound Shell NLS"

    .line 739
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const-wide/16 v0, 0x64

    .line 743
    :try_start_13
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method
