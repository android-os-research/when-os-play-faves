.class public Lcom/android/server/om/wallpapertheme/Uid;
.super Ljava/lang/Object;
.source "Uid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/wallpapertheme/Uid$TYPE;
    }
.end annotation


# static fields
.field public static final VALUE_TYPE_BGCOLOR:Ljava/lang/String; = "BgColor"

.field public static final VALUE_TYPE_BGIMAGE:Ljava/lang/String; = "BgImage"

.field public static final VALUE_TYPE_BOOL:Ljava/lang/String; = "Bool"

.field public static final VALUE_TYPE_COLOR:Ljava/lang/String; = "Color"

.field public static final VALUE_TYPE_FONT:Ljava/lang/String; = "FontStyle"

.field public static final VALUE_TYPE_IMAGE:Ljava/lang/String; = "Image"

.field public static final VALUE_TYPE_INTEGER:Ljava/lang/String; = "Integer"

.field public static final VALUE_TYPE_TEXT:Ljava/lang/String; = "Text"

.field public static final VALUE_TYPE_TEXTCOLOR:Ljava/lang/String; = "TextColor"

.field public static final VALUE_TYPE_TINTCOLOR:Ljava/lang/String; = "TintColor"


# instance fields
.field public mDefaultValue:Ljava/lang/String;

.field public mDestAttribName:Ljava/lang/String;

.field public mOpacity:Ljava/lang/String;

.field public mPOption:Ljava/lang/String;

.field public mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public mUidValue:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field public mValueRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mUidValue:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/android/server/om/wallpapertheme/Uid;->mDestAttribName:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/android/server/om/wallpapertheme/Uid;->mValueRef:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/server/om/wallpapertheme/Uid;->mPOption:Ljava/lang/String;

    if-eqz p7, :cond_13

    .line 50
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_13
    const/4 p7, 0x0

    :cond_14
    iput-object p7, p0, Lcom/android/server/om/wallpapertheme/Uid;->mOpacity:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/server/om/wallpapertheme/Uid;->mDefaultValue:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_c0

    goto/16 :goto_98

    :sswitch_25
    const-string p3, "BgImage"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto/16 :goto_98

    :cond_2f
    const/16 p1, 0x9

    goto/16 :goto_98

    :sswitch_33
    const-string p3, "BgColor"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3d

    goto/16 :goto_98

    :cond_3d
    const/16 p1, 0x8

    goto/16 :goto_98

    :sswitch_41
    const-string p3, "TextColor"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    goto :goto_98

    :cond_4a
    const/4 p1, 0x7

    goto :goto_98

    :sswitch_4c
    const-string p3, "FontStyle"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_55

    goto :goto_98

    :cond_55
    const/4 p1, 0x6

    goto :goto_98

    :sswitch_57
    const-string p3, "Image"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_60

    goto :goto_98

    :cond_60
    const/4 p1, 0x5

    goto :goto_98

    :sswitch_62
    const-string p3, "Color"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6b

    goto :goto_98

    :cond_6b
    const/4 p1, 0x4

    goto :goto_98

    :sswitch_6d
    const-string p3, "Text"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_76

    goto :goto_98

    :cond_76
    const/4 p1, 0x3

    goto :goto_98

    :sswitch_78
    const-string p3, "Bool"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_81

    goto :goto_98

    :cond_81
    const/4 p1, 0x2

    goto :goto_98

    :sswitch_83
    const-string p3, "Integer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8c

    goto :goto_98

    :cond_8c
    const/4 p1, 0x1

    goto :goto_98

    :sswitch_8e
    const-string p3, "TintColor"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_97

    goto :goto_98

    :cond_97
    const/4 p1, 0x0

    :goto_98
    packed-switch p1, :pswitch_data_ea

    .line 77
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->NONE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    goto :goto_bf

    .line 70
    :pswitch_a0
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->FONT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    .line 71
    iput-object p4, p0, Lcom/android/server/om/wallpapertheme/Uid;->mValue:Ljava/lang/String;

    goto :goto_bf

    .line 61
    :pswitch_a7
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->IMAGE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    goto :goto_bf

    .line 74
    :pswitch_ac
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->TEXT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    goto :goto_bf

    .line 67
    :pswitch_b1
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->BOOL:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    goto :goto_bf

    .line 64
    :pswitch_b6
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->INTEGER:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    goto :goto_bf

    .line 57
    :pswitch_bb
    sget-object p1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->COLOR:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    :goto_bf
    return-void

    :sswitch_data_c0
    .sparse-switch
        -0x396c4ef8 -> :sswitch_8e
        -0x2811e6e2 -> :sswitch_83
        0x1faf0a -> :sswitch_78
        0x27b94d -> :sswitch_6d
        0x3e43f43 -> :sswitch_62
        0x437b93b -> :sswitch_57
        0x1b009a82 -> :sswitch_4c
        0x380d4e16 -> :sswitch_41
        0x5702adfe -> :sswitch_33
        0x575627f6 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_bb
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_bb
        :pswitch_a7
        :pswitch_a0
        :pswitch_bb
        :pswitch_bb
        :pswitch_a7
    .end packed-switch
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mDefaultValue:Ljava/lang/String;

    return-object p0
.end method

.method public getDestAttribName()Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mDestAttribName:Ljava/lang/String;

    return-object p0
.end method

.method public getOpacity()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mOpacity:Ljava/lang/String;

    return-object p0
.end method

.method public getReference()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mValueRef:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/android/server/om/wallpapertheme/Uid$TYPE;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    return-object p0
.end method

.method public getUidValue()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Uid;->mUidValue:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/android/server/om/wallpapertheme/Uid$TYPE;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Uid;->mType:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    return-void
.end method
