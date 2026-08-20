.class public Lcom/samsung/android/server/audio/CommandHelper;
.super Ljava/lang/Object;
.source "CommandHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executePanel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.panel.SettingsPanelActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "mediapanel"

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string p1, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32

    :cond_24
    const-string/jumbo v1, "volumepanel"

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p1, "android.settings.panel.action.VOLUME"

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catch Landroid/content/ActivityNotFoundException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 97
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method public static handleCustomCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;Ljava/util/function/Function;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_7} :catch_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_18b

    const-string v3, "mediapanel"

    const-string/jumbo v4, "volumepanel"

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_192

    goto :goto_39

    :sswitch_14
    :try_start_14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    move v1, v7

    goto :goto_3a

    :sswitch_1c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    move v1, v5

    goto :goto_3a

    :sswitch_24
    const-string v2, "acparam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    move v1, v8

    goto :goto_3a

    :sswitch_2e
    const-string/jumbo v2, "safe-media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_35} :catch_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_35} :catch_18b

    if-eqz v1, :cond_39

    move v1, v0

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v6

    :goto_3a
    const-string v2, "--set"

    const-string v9, "--get"

    const v10, 0x29052c2

    const v11, 0x29025b6

    if-eqz v1, :cond_e4

    if-eq v1, v8, :cond_58

    if-eq v1, v7, :cond_53

    if-eq v1, v5, :cond_4e

    goto/16 :goto_190

    .line 68
    :cond_4e
    :try_start_4e
    invoke-static {p2, v4}, Lcom/samsung/android/server/audio/CommandHelper;->executePanel(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 65
    :cond_53
    invoke-static {p2, v3}, Lcom/samsung/android/server/audio/CommandHelper;->executePanel(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 45
    :cond_58
    aget-object p2, p1, v8

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    if-eq p3, v11, :cond_6b

    if-eq p3, v10, :cond_63

    goto :goto_72

    :cond_63
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    move v6, v8

    goto :goto_72

    :cond_6b
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    move v6, v0

    :cond_72
    :goto_72
    if-eqz v6, :cond_99

    if-eq v6, v8, :cond_78

    goto/16 :goto_190

    .line 56
    :cond_78
    aget-object p2, p1, v7

    invoke-static {p2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Success to set ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v7

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 47
    :cond_99
    aget-object p2, p1, v7

    invoke-static {p2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c3

    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Warning: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v7

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Unknown arguments"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 51
    :cond_c3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v7

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nVALUE : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e1
    move v0, v8

    goto/16 :goto_190

    .line 19
    :cond_e4
    aget-object p2, p1, v8

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eq v1, v11, :cond_f7

    if-eq v1, v10, :cond_ef

    goto :goto_ff

    :cond_ef
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ff

    move p2, v8

    goto :goto_100

    :cond_f7
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ff

    move p2, v0

    goto :goto_100

    :cond_ff
    :goto_ff
    move p2, v6

    :goto_100
    if-eqz p2, :cond_16b

    if-eq p2, v8, :cond_106

    goto/16 :goto_190

    .line 24
    :cond_106
    aget-object p2, p1, v7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1a4

    goto :goto_137

    :pswitch_110
    const-string v1, "3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_137

    move v6, v5

    goto :goto_137

    :pswitch_11a
    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_137

    move v6, v7

    goto :goto_137

    :pswitch_124
    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_137

    move v6, v8

    goto :goto_137

    :pswitch_12e
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_137

    move v6, v0

    :cond_137
    :goto_137
    if-eqz v6, :cond_145

    if-eq v6, v8, :cond_145

    if-eq v6, v7, :cond_145

    if-eq v6, v5, :cond_145

    const-string p1, "  Warning : Only numbers between 0 and 3 are allowed."

    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 29
    :cond_145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Success to set "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v7

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 29
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 21
    :cond_16b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  mSafeMediaVolumeState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_189} :catch_18b
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_189} :catch_18b

    goto/16 :goto_e1

    :catch_18b
    const-string p1, "  Warning : command requires the next arguments"

    .line 75
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_190
    return v0

    nop

    :sswitch_data_192
    .sparse-switch
        -0x7f8d5a5c -> :sswitch_2e
        -0x457bae55 -> :sswitch_24
        -0x333c7cd6 -> :sswitch_1c
        0x7486e8a0 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_1a4
    .packed-switch 0x30
        :pswitch_12e
        :pswitch_124
        :pswitch_11a
        :pswitch_110
    .end packed-switch
.end method
