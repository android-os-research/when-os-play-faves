.class public final Lcom/android/server/am/HostingRecord;
.super Ljava/lang/Object;
.source "HostingRecord.java"


# static fields
.field public static final APP_ZYGOTE:I = 0x2

.field public static final HOSTING_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final HOSTING_TYPE_ADDED_APPLICATION:Ljava/lang/String; = "added application"

.field public static final HOSTING_TYPE_BACKUP:Ljava/lang/String; = "backup"

.field public static final HOSTING_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final HOSTING_TYPE_CONTENT_PROVIDER:Ljava/lang/String; = "content provider"

.field public static final HOSTING_TYPE_EMPTY:Ljava/lang/String; = ""

.field public static final HOSTING_TYPE_LINK_FAIL:Ljava/lang/String; = "link fail"

.field public static final HOSTING_TYPE_NEXT_ACTIVITY:Ljava/lang/String; = "next-activity"

.field public static final HOSTING_TYPE_NEXT_TOP_ACTIVITY:Ljava/lang/String; = "next-top-activity"

.field public static final HOSTING_TYPE_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final HOSTING_TYPE_RESTART:Ljava/lang/String; = "restart"

.field public static final HOSTING_TYPE_SERVICE:Ljava/lang/String; = "service"

.field public static final HOSTING_TYPE_SYSTEM:Ljava/lang/String; = "system"

.field public static final HOSTING_TYPE_TOP_ACTIVITY:Ljava/lang/String; = "top-activity"

.field public static final REGULAR_ZYGOTE:I = 0x0

.field public static final WEBVIEW_ZYGOTE:I = 0x1


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mDefiningPackageName:Ljava/lang/String;

.field public final mDefiningProcessName:Ljava/lang/String;

.field public final mDefiningUid:I

.field public final mHostingName:Ljava/lang/String;

.field public final mHostingType:Ljava/lang/String;

.field public final mHostingZygote:I

.field public final mIsTopApp:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 84
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 4

    .line 118
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 13

    .line 95
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15

    .line 102
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V
    .registers 13

    .line 107
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 122
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    .line 132
    iput p3, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    .line 133
    iput-object p4, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    .line 134
    iput p5, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    .line 135
    iput-boolean p6, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    .line 136
    iput-object p7, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    .line 137
    iput-object p8, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static byAppZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .registers 14

    .line 212
    new-instance v9, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static byWebviewZygote(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/HostingRecord;
    .registers 14

    .line 198
    new-instance v9, Lcom/android/server/am/HostingRecord;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public static getHostingTypeIdStatsd(Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p0

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_f4

    goto/16 :goto_e0

    :sswitch_24
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_e0

    :cond_2f
    move/from16 v16, v2

    goto/16 :goto_e0

    :sswitch_33
    const-string v1, "added application"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_e0

    :cond_3d
    move/from16 v16, v3

    goto/16 :goto_e0

    :sswitch_41
    const-string v1, "content provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_e0

    :cond_4b
    move/from16 v16, v4

    goto/16 :goto_e0

    :sswitch_4f
    const-string/jumbo v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_e0

    :cond_5a
    move/from16 v16, v5

    goto/16 :goto_e0

    :sswitch_5e
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_e0

    :cond_68
    move/from16 v16, v6

    goto/16 :goto_e0

    :sswitch_6c
    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_e0

    :cond_77
    move/from16 v16, v7

    goto/16 :goto_e0

    :sswitch_7b
    const-string/jumbo v1, "next-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_e0

    :cond_86
    move/from16 v16, v8

    goto :goto_e0

    :sswitch_89
    const-string/jumbo v1, "on-hold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_e0

    :cond_93
    move/from16 v16, v9

    goto :goto_e0

    :sswitch_96
    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_e0

    :cond_9f
    move/from16 v16, v10

    goto :goto_e0

    :sswitch_a2
    const-string/jumbo v1, "next-top-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_e0

    :cond_ac
    move/from16 v16, v11

    goto :goto_e0

    :sswitch_af
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_e0

    :cond_b8
    move/from16 v16, v12

    goto :goto_e0

    :sswitch_bb
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto :goto_e0

    :cond_c4
    move/from16 v16, v13

    goto :goto_e0

    :sswitch_c7
    const-string/jumbo v1, "link fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto :goto_e0

    :cond_d1
    move/from16 v16, v14

    goto :goto_e0

    :sswitch_d4
    const-string/jumbo v1, "top-activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto :goto_e0

    :cond_de
    move/from16 v16, v15

    :goto_e0
    packed-switch v16, :pswitch_data_12e

    return v15

    :pswitch_e4
    return v4

    :pswitch_e5
    return v13

    :pswitch_e6
    return v10

    :pswitch_e7
    return v5

    :pswitch_e8
    const/16 v0, 0xe

    return v0

    :pswitch_eb
    return v3

    :pswitch_ec
    return v7

    :pswitch_ed
    return v8

    :pswitch_ee
    return v12

    :pswitch_ef
    return v6

    :pswitch_f0
    return v11

    :pswitch_f1
    return v14

    :pswitch_f2
    return v9

    :pswitch_f3
    return v2

    :sswitch_data_f4
    .sparse-switch
        -0x66e29b79 -> :sswitch_d4
        -0x644efc7c -> :sswitch_c7
        -0x62b40cf1 -> :sswitch_bb
        -0x607e173f -> :sswitch_af
        -0x5af75edf -> :sswitch_a2
        -0x533f8a3e -> :sswitch_96
        -0x51cc2413 -> :sswitch_89
        -0x50ce7357 -> :sswitch_7b
        -0x34e38dd1 -> :sswitch_6c
        0x0 -> :sswitch_5e
        0x416a9e0f -> :sswitch_4f
        0x548ba9b8 -> :sswitch_41
        0x61951230 -> :sswitch_33
        0x7643c6b5 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
    .end packed-switch
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningPackageName()Ljava/lang/String;
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningProcessName()Ljava/lang/String;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public getDefiningUid()I
    .registers 1

    .line 159
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mDefiningUid:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/android/server/am/HostingRecord;->mHostingType:Ljava/lang/String;

    return-object p0
.end method

.method public isTopApp()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/android/server/am/HostingRecord;->mIsTopApp:Z

    return p0
.end method

.method public usesAppZygote()Z
    .registers 2

    .line 221
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public usesWebviewZygote()Z
    .registers 2

    .line 228
    iget p0, p0, Lcom/android/server/am/HostingRecord;->mHostingZygote:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
