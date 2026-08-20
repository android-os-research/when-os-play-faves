.class public Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskSettings"
.end annotation


# instance fields
.field public OFF:I

.field public ON:I

.field public defaultValue:I

.field public key:Ljava/lang/String;

.field public previousValue:I

.field public rawKey:Ljava/lang/String;

.field public tableType:I

.field public final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetrawKey(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 3

    .line 790
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 791
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    const/4 v0, 0x0

    .line 792
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    .line 797
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    .line 798
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public getCurrentSettings(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 2

    .line 858
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result p1

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    if-eq p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I
    .registers 4

    .line 841
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 p1, 0x3

    if-eq v0, p1, :cond_d

    const/4 p0, -0x1

    goto :goto_49

    .line 849
    :cond_d
    iget-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_49

    .line 846
    :cond_20
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    goto :goto_49

    .line 843
    :cond_35
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget p1, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    :goto_49
    return p0
.end method

.method public final isExceptionalCase()Z
    .registers 4

    .line 889
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object p0

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_corner_action_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 6

    .line 864
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    if-ne p1, v0, :cond_a

    .line 865
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result v0

    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    .line 868
    :cond_a
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    goto :goto_49

    .line 876
    :cond_16
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_49

    .line 873
    :cond_26
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_49

    .line 870
    :cond_38
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 881
    :goto_49
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->isExceptionalCase()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 882
    invoke-static {}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "This case shouldn\'t be included at ignore list"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 885
    :cond_59
    iget-object p1, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 7

    .line 820
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_2b

    .line 830
    :cond_e
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2b

    .line 826
    :cond_18
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2b

    .line 822
    :cond_22
    iget-object p0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_2b
    return-void
.end method

.method public setCustomOffValue(I)V
    .registers 2

    .line 907
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    return-void
.end method

.method public setCustomOnValue(I)V
    .registers 2

    .line 903
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    return-void
.end method

.method public setSettingsKey(Ljava/lang/String;)V
    .registers 8

    .line 803
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    const-string v0, "/"

    .line 804
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 806
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_4e

    :goto_18
    move v0, v5

    goto :goto_3c

    :sswitch_1a
    const-string/jumbo v0, "system"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_18

    :cond_24
    move v0, v3

    goto :goto_3c

    :sswitch_26
    const-string/jumbo v0, "secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_18

    :cond_30
    move v0, v4

    goto :goto_3c

    :sswitch_32
    const-string/jumbo v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_18

    :cond_3c
    :goto_3c
    packed-switch v0, :pswitch_data_5c

    goto :goto_49

    .line 807
    :pswitch_40
    iput v4, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    goto :goto_49

    .line 809
    :pswitch_43
    iput v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    goto :goto_49

    :pswitch_46
    const/4 v0, 0x3

    .line 811
    iput v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 816
    :goto_49
    aget-object p1, p1, v4

    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    return-void

    :sswitch_data_4e
    .sparse-switch
        -0x4a16fc5d -> :sswitch_32
        -0x3604a489 -> :sswitch_26
        -0x34e38dd1 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method

.method public turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 896
    iget p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->previousValue:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_d

    .line 898
    :cond_8
    iget p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    :goto_d
    return-void
.end method
