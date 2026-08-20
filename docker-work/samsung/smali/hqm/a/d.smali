.class La/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/f;


# direct methods
.method constructor <init>(La/f;)V
    .registers 2

    iput-object p1, p0, La/d;->a:La/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 31

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_14d

    if-nez v2, :cond_10

    goto/16 :goto_14d

    :cond_10
    const-string v3, "com.samsung.context.hqmbigdata.intent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "appID"

    const-string v5, "PDataSet"

    const-string v6, "BDataSet"

    const-string v7, "DDataSet"

    const-string v8, "Feature"

    const-string v9, "HitType"

    const-string v10, "MFG"

    const-string v11, "Ver"

    const-string v12, "Id"

    const-string v14, "Type"

    const-string v15, "com.samsung.android.hqm"

    const-string v13, ""

    if-eqz v3, :cond_a5

    const-string v1, "hwparam"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/HWParamParcel;

    if-eqz v1, :cond_69

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getType()I

    move-result v18

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompID()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompVer()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompManufacture()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getHitType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getFeature()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getDevelopMap()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCustomMap()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getPrivateMap()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    goto :goto_98

    :cond_69
    const/4 v1, 0x0

    invoke-virtual {v2, v14, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2, v10, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2, v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2, v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2, v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v2, v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2, v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2, v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    :goto_98
    move-object/from16 v27, v15

    goto :goto_9d

    :cond_9b
    move-object/from16 v27, v1

    :goto_9d
    iget-object v0, v0, La/d;->a:La/f;

    const/16 v17, 0x2

    move-object/from16 v16, v0

    goto/16 :goto_120

    :cond_a5
    const-string v3, "com.sec.android.intent.action.APP_HQM_SEND_REQ"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2, v10, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2, v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v2, v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v2, v6, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v2, v5, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v2, v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const-string v6, "android.intent.extra.UID"

    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    :cond_e5
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    move-object/from16 v27, v15

    goto :goto_f0

    :cond_ee
    move-object/from16 v27, v4

    :goto_f0
    invoke-static {}, La/f;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "log is from non-system app : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, La/d;->a:La/f;

    const/16 v17, 0x2

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v23, v3

    :goto_120
    invoke-static/range {v16 .. v27}, La/f;->g(La/f;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_14c

    :cond_124
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    const-string v0, "USER_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14c

    invoke-static {}, La/f;->h()La/j;

    move-result-object v1

    if-eqz v1, :cond_14c

    invoke-static {}, La/f;->h()La/j;

    move-result-object v1

    invoke-virtual {v1, v0}, La/j;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14c

    sput-object v0, Lc/k;->J:Ljava/lang/String;

    :cond_14c
    :goto_14c
    return-void

    :cond_14d
    :goto_14d
    invoke-static {}, La/f;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hqmBigDataReceiver - intent error"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
