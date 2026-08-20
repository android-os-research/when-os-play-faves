.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;,
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;
    }
.end annotation


# static fields
.field public static final AGENT_META_DATA:Ljava/lang/String; = "com.samsung.ucm.agent"

.field public static final AGENT_XML_TAG:Ljava/lang/String; = "cred-agent"

.field public static final BOOTAGENT_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.BOOTAGENT_REFRESH_DONE"

.field public static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field public static final DEBUG:Z

.field public static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field public static final MSG_RESTART_TIMEOUT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "UcmAgentWrapper"

.field public static final UCM_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"


# instance fields
.field public RESTART_TIMEOUT_MILLIS:J

.field public componentName:Landroid/content/ComponentName;

.field public info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

.field public mAgentDeleteDelegate:Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;

.field public mBound:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public mContext:Landroid/content/Context;

.field public mEventBoxQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Landroid/os/Handler;

.field public mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAgentDeleteDelegate(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mAgentDeleteDelegate:Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmUcmAgentService(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleRestart(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 45
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;Landroid/content/ComponentName;)V
    .registers 6

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 50
    iput-wide v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    .line 169
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 86
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mAgentDeleteDelegate:Lcom/samsung/ucm/ucmservice/IUcmAgentManagerDeleteDelegate;

    .line 88
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    .line 90
    :try_start_1e
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->createHandler()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public static getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .registers 13

    const-string v0, "isReadOnly"

    const-string v1, "isHardwareBacked"

    const-string/jumbo v2, "reqUserVerification"

    const-string v3, "isDetachable"

    const-string/jumbo v4, "true"

    const-string v5, "UcmAgentWrapper"

    const/4 v6, 0x0

    if-nez p1, :cond_17

    const-string p0, "Context is null"

    .line 547
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_17
    if-eqz p0, :cond_33f

    .line 551
    iget-object v7, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_33f

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_23

    goto/16 :goto_33f

    .line 557
    :cond_23
    new-instance v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    invoke-direct {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;-><init>()V

    .line 558
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 562
    :try_start_2c
    iget-object v8, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v9, "com.samsung.ucm.agent"

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_34} :catch_306
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_34} :catch_301
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_34} :catch_2f9
    .catchall {:try_start_2c .. :try_end_34} :catchall_2f2

    if-nez v8, :cond_41

    :try_start_36
    const-string p1, "Can\'t find com.samsung.ucm.agent meta-data"

    .line 564
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_2f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_3b} :catch_2ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_36 .. :try_end_3b} :catch_2ec
    .catchall {:try_start_36 .. :try_end_3b} :catchall_2e9

    if-eqz v8, :cond_40

    .line 736
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_40
    return-object v6

    .line 567
    :cond_41
    :try_start_41
    iget-object v9, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 570
    :goto_48
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p1

    const/4 v9, 0x1

    if-eq p1, v9, :cond_53

    const/4 v10, 0x2

    if-eq p1, v10, :cond_53

    goto :goto_48

    .line 573
    :cond_53
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v10, "cred-agent"

    .line 574
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    const-string p1, "Meta-data does not start with tag cred-agent"

    .line 575
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_64} :catch_2f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_64} :catch_2ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_64} :catch_2ec
    .catchall {:try_start_41 .. :try_end_64} :catchall_2e9

    .line 736
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v6

    :cond_68
    :try_start_68
    const-string p1, "id"

    .line 579
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz p1, :cond_2e0

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string/jumbo p1, "summary"

    .line 587
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    const-string/jumbo p1, "title"

    .line 588
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    const-string/jumbo p1, "vendorId"

    .line 589
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    .line 590
    invoke-interface {v8, v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    .line 591
    invoke-interface {v8, v6, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    .line 592
    invoke-interface {v8, v6, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    .line 593
    invoke-interface {v8, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    .line 595
    sget-boolean p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz p1, :cond_11d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DETAILED agentInfo information : isDetachable = "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requireUserVerification = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-interface {v8, v6, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHardwareBacked = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v6, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isReadOnly = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-interface {v8, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " packageName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    const-string p1, "configuratorList"

    .line 599
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    const-string p1, "isManageable"

    .line 600
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_12b} :catch_2f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_12b} :catch_2ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_12b} :catch_2ec
    .catchall {:try_start_68 .. :try_end_12b} :catchall_2e9

    const-string v0, "false"

    const/4 v1, 0x0

    if-eqz p1, :cond_13f

    .line 601
    :try_start_130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13f

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13f

    .line 602
    iput-boolean v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    goto :goto_141

    .line 604
    :cond_13f
    iput-boolean v9, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    :goto_141
    const-string p1, "enforceManagement"

    .line 606
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 607
    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_157

    .line 608
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    .line 610
    :cond_157
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    const-string/jumbo p1, "pinMinimum"

    .line 612
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16b

    .line 614
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    goto :goto_174

    :cond_16b
    const-string/jumbo p1, "pinMinLength in xml is null"

    .line 616
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 618
    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    :goto_174
    const-string/jumbo p1, "pinMaximum"

    .line 620
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_184

    .line 622
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    goto :goto_18d

    :cond_184
    const-string/jumbo p1, "pinMaxLength in xml is null"

    .line 624
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x6

    .line 626
    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    :goto_18d
    const-string/jumbo p1, "pukMinimum"

    .line 628
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19d

    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    goto :goto_1a7

    :cond_19d
    const-string/jumbo p1, "pukMinLength in xml is null"

    .line 632
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 634
    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    :goto_1a7
    const-string/jumbo p1, "pukMaximum"

    .line 636
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b7

    .line 638
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    goto :goto_1c1

    :cond_1b7
    const-string/jumbo p1, "pukMaxLength in xml is null"

    .line 640
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x14

    .line 642
    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    :goto_1c1
    const-string/jumbo p1, "pinRetrycount"

    .line 644
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d1

    .line 646
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    goto :goto_1d9

    :cond_1d1
    const-string p1, "authMaxCnt in xml is null"

    .line 648
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    .line 650
    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    :goto_1d9
    const-string p1, "checkMode"

    .line 652
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e8

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    goto :goto_1ef

    :cond_1e8
    const-string p1, "authMode in xml is null"

    .line 656
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iput v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    :goto_1ef
    const-string p1, "isGeneratePasswordSupport"

    .line 660
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    const-string p1, "isODESupport"

    .line 663
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    const-string/jumbo p1, "settingsActivity"

    .line 666
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_230

    const/16 v2, 0x2f

    .line 667
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_230

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_230
    if-nez p1, :cond_234

    move-object p1, v6

    goto :goto_238

    .line 671
    :cond_234
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    :goto_238
    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->settingsComponentName:Landroid/content/ComponentName;

    const-string/jumbo p1, "storageType"

    .line 674
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    const-string p1, "enabledSCP"

    .line 677
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    const-string p1, "enabledWrap"

    .line 680
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25a

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    goto :goto_261

    :cond_25a
    const-string p1, "enabledWrap in xml is null"

    .line 684
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iput v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 689
    :goto_261
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AID"

    .line 693
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_27d

    .line 694
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eq v9, v2, :cond_27d

    .line 695
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    goto :goto_284

    :cond_27d
    const-string p1, "AID in xml is null"

    .line 697
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iput-object v6, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    :goto_284
    const-string p1, "isPUKSupported"

    .line 702
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29b

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29b

    .line 704
    iput-boolean v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    goto :goto_29d

    .line 706
    :cond_29b
    iput-boolean v9, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isPUKSupported:Z

    :goto_29d
    const-string/jumbo p1, "supportSign"

    .line 709
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b5

    .line 710
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b5

    .line 711
    iput-boolean v9, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportSign:Z

    goto :goto_2b7

    .line 713
    :cond_2b5
    iput-boolean v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportSign:Z

    :goto_2b7
    const-string/jumbo p1, "supportKnoxVersion"

    .line 716
    invoke-interface {v8, v6, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "supportPinConfiguration"

    .line 717
    invoke-interface {v8, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_2d9

    if-eqz v0, :cond_2d6

    .line 721
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2d6

    .line 722
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d6

    goto :goto_2d9

    .line 725
    :cond_2d6
    iput-boolean v1, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z

    goto :goto_2db

    .line 723
    :cond_2d9
    :goto_2d9
    iput-boolean v9, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->supportPinConfiguration:Z
    :try_end_2db
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_2db} :catch_2f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_2db} :catch_2ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_130 .. :try_end_2db} :catch_2ec
    .catchall {:try_start_130 .. :try_end_2db} :catchall_2e9

    .line 736
    :goto_2db
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p1, v6

    goto :goto_30b

    :cond_2e0
    :try_start_2e0
    const-string p1, "Agent Id can\'t be null.."

    .line 584
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e5
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_2e5} :catch_2f0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e0 .. :try_end_2e5} :catch_2ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e0 .. :try_end_2e5} :catch_2ec
    .catchall {:try_start_2e0 .. :try_end_2e5} :catchall_2e9

    .line 736
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v6

    :catchall_2e9
    move-exception p0

    move-object v6, v8

    goto :goto_2f3

    :catch_2ec
    move-exception p1

    goto :goto_2fb

    :catch_2ee
    move-exception p1

    goto :goto_303

    :catch_2f0
    move-exception p1

    goto :goto_308

    :catchall_2f2
    move-exception p0

    :goto_2f3
    if-eqz v6, :cond_2f8

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 737
    :cond_2f8
    throw p0

    :catch_2f9
    move-exception p1

    move-object v8, v6

    :goto_2fb
    if-eqz v8, :cond_30b

    .line 736
    :goto_2fd
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_30b

    :catch_301
    move-exception p1

    move-object v8, v6

    :goto_303
    if-eqz v8, :cond_30b

    goto :goto_2fd

    :catch_306
    move-exception p1

    move-object v8, v6

    :goto_308
    if-eqz v8, :cond_30b

    goto :goto_2fd

    :cond_30b
    :goto_30b
    if-eqz p1, :cond_326

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    .line 742
    :cond_326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "agentInfo: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_33f
    :goto_33f
    const-string/jumbo p0, "resolveInfo null"

    .line 553
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 3

    if-eqz p0, :cond_13

    .line 164
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_13

    .line 166
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    .line 748
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    const-string v1, "UcmAgentWrapper"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hexStringToByteArray : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p0, :cond_4f

    .line 749
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_24

    goto :goto_4f

    .line 753
    :cond_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 754
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_4e

    .line 756
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 757
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_2d

    :cond_4e
    return-object v1

    :cond_4f
    :goto_4f
    const-string p0, "Input value is empty"

    .line 750
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 484
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 411
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 383
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 526
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final createHandler()V
    .registers 3

    const-string v0, "UcmAgentWrapper"

    const-string v1, "createHandler. enter"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UcmAgentWrapperHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 299
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 250
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 306
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 73
    instance-of v0, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_6
    check-cast p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 77
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public generateDek()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 257
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 334
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 348
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 285
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 362
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateWrappedDek()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 264
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 292
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 390
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 376
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDek()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 271
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDetailErrorMessage(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    :try_start_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_11

    .line 534
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    const-string p0, "UcmAgentWrapper"

    const-string/jumbo p1, "this plugin does not support getDetailErrorMessage API"

    .line 536
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfo()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 491
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 341
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 453
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardPinMaximumLength()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 469
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getKeyguardPinMaximumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 446
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyguardPinMinimumLength()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 461
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getKeyguardPinMinimumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatus()Landroid/os/Bundle;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 498
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 327
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 320
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 418
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .registers 9

    .line 119
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UcmAgentWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v1, :cond_55

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v1, :cond_55

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v3, 0x1d4c0

    if-eqz v1, :cond_47

    .line 127
    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 130
    :cond_47
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v5, "com.samsung.ucs.agent.boot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 131
    iput-wide v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 135
    :cond_55
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    .line 136
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_65

    .line 137
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 139
    :cond_65
    iget-boolean p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez p0, :cond_7d

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not able to bind "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void
.end method

.method public isServiceBound()Z
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyChange(ILandroid/os/Bundle;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 231
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 519
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public resetUid(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 512
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public resetUser(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 505
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 243
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final scheduleRestart()V
    .registers 5

    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "scheduleRestart"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 313
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 369
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setKeyguardPinMaximumLength(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 439
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setKeyguardPinMaximumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 425
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setKeyguardPinMinimumLength(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 432
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setKeyguardPinMinimumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public setState(I)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 477
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz v0, :cond_e

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 355
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public triggerNotifyChange(ILandroid/os/Bundle;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    new-instance v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public unbind()V
    .registers 5

    .line 148
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    const-string v1, "UcmAgentWrapper"

    if-nez v0, :cond_c

    const-string p0, "it is not bound anymore"

    .line 149
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string/jumbo v0, "unbind "

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_12
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_39

    :catch_1a
    move-exception v0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind. Exception ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    return-void
.end method

.method public unwrapDek([B)Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 278
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 397
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p0, :cond_9

    .line 404
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
