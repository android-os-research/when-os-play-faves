.class public final Lcom/android/server/usb/UsbUI$NotificationWrapper;
.super Ljava/lang/Object;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NotificationWrapper"
.end annotation


# instance fields
.field public final action:Landroid/app/Notification$Action;

.field public alertOnce:Z

.field public channel:Ljava/lang/String;

.field public final icon:I

.field public instant:Z

.field public final message:Ljava/lang/CharSequence;

.field public ongoing:Z

.field public priority:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public static bridge synthetic -$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetongoing(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgettitle(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V
    .registers 10

    .line 887
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 882
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 883
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    .line 884
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 885
    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    .line 888
    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1f

    :cond_1e
    move-object p2, v0

    :goto_1f
    iput-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    if-eqz p3, :cond_2b

    .line 889
    invoke-static {p1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    iput-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    .line 890
    iput p4, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 891
    iput-object p5, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    .line 892
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->parseOptions(J)V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .registers 1

    .line 958
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->buildNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p0

    .line 959
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public final buildNotificationBuilder()Landroid/app/Notification$Builder;
    .registers 6

    .line 920
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->icon:I

    .line 922
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    .line 923
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x106001c

    .line 924
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    .line 925
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 926
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 927
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 928
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 930
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5d

    .line 931
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 932
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    const-string v4, "USBImpLow"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 933
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 936
    :cond_5d
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->message:Ljava/lang/CharSequence;

    if-eqz v3, :cond_64

    .line 937
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 940
    :cond_64
    iget-object v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->action:Landroid/app/Notification$Action;

    if-eqz v3, :cond_6b

    .line 941
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 944
    :cond_6b
    iget-boolean v3, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    if-eqz v3, :cond_73

    .line 945
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    goto :goto_76

    .line 947
    :cond_73
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 950
    :goto_76
    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    if-eqz p0, :cond_7d

    .line 951
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    :cond_7d
    return-object v0
.end method

.method public final parseOptions(J)V
    .registers 7

    const-wide/16 v0, 0x1

    .line 896
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    :cond_b
    const-wide/16 v2, 0x2

    .line 897
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    :cond_15
    const-wide/16 v2, 0x4

    .line 898
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->alertOnce:Z

    :cond_1f
    const-wide/16 v2, 0x8

    .line 899
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    :cond_2b
    const-wide/16 v2, 0x10

    .line 900
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_36
    const-wide/16 v2, 0x20

    .line 901
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_41
    const-wide/16 v2, 0x40

    .line 902
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    if-eqz v0, :cond_4b

    iput v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_4b
    const-wide/16 v0, 0x80

    .line 903
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_56

    iput v1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->priority:I

    :cond_56
    const-wide/16 v2, 0x100

    .line 905
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/usb/UsbUI;->-$$Nest$smisIncludeOption(JJ)Z

    move-result p1

    if-eqz p1, :cond_81

    const-string p1, "USBImpLow"

    .line 907
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    .line 911
    new-instance p1, Landroid/app/NotificationChannel;

    iget-object p2, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->channel:Ljava/lang/String;

    const-string v0, "USBImportanceLow"

    invoke-direct {p1, p2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p2, "USB connector connection"

    .line 912
    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 913
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p0

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 914
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_81
    return-void
.end method
