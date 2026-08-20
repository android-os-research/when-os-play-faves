.class public Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersistableLaunchParams"
.end annotation


# static fields
.field public static final ATTR_BOUNDS:Ljava/lang/String; = "bounds"

.field public static final ATTR_DEX_DUAL_BOUNDS:Ljava/lang/String; = "dex_dual_bounds"

.field public static final ATTR_DEX_STANDALONE_BOUNDS:Ljava/lang/String; = "dex_standalone_bounds"

.field public static final ATTR_DEX_WINDOWING_MODE:Ljava/lang/String; = "dex_windowing_mode"

.field public static final ATTR_DISPLAY_DEVICE_TYPE:Ljava/lang/String; = "display_device_type"

.field public static final ATTR_DISPLAY_UNIQUE_ID:Ljava/lang/String; = "display_unique_id"

.field public static final ATTR_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final ATTR_WINDOWING_MODE:Ljava/lang/String; = "windowing_mode"

.field public static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"


# instance fields
.field public final mBounds:Landroid/graphics/Rect;

.field public final mDexDualBounds:Landroid/graphics/Rect;

.field public final mDexStandAloneBounds:Landroid/graphics/Rect;

.field public mDexWindowingMode:I

.field public mDisplayDeviceType:I

.field public mDisplayUniqueId:Ljava/lang/String;

.field public final mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

.field public mOrientation:I

.field public mTimestamp:J

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public mWindowingMode:I

.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 660
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDexDualBounds:Landroid/graphics/Rect;

    .line 661
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    .line 665
    new-instance p1, Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-direct {p1}, Lcom/android/server/wm/FreeformPersistBoundsParams;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    return-void
.end method


# virtual methods
.method public restore(Ljava/io/File;Landroid/util/TypedXmlPullParser;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 713
    :goto_2
    invoke-interface {p2}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_db

    .line 714
    invoke-interface {p2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-interface {p2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_e2

    goto/16 :goto_85

    :sswitch_1d
    const-string/jumbo v5, "window_layout_affinity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto/16 :goto_85

    :cond_28
    const/16 v4, 0x8

    goto/16 :goto_85

    :sswitch_2c
    const-string/jumbo v5, "windowing_mode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_85

    :cond_36
    const/4 v4, 0x7

    goto :goto_85

    :sswitch_38
    const-string v5, "dex_standalone_bounds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_85

    :cond_41
    const/4 v4, 0x6

    goto :goto_85

    :sswitch_43
    const-string v5, "dex_dual_bounds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_85

    :cond_4c
    const/4 v4, 0x5

    goto :goto_85

    :sswitch_4e
    const-string v5, "dex_windowing_mode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_85

    :cond_57
    const/4 v4, 0x4

    goto :goto_85

    :sswitch_59
    const-string v5, "bounds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto :goto_85

    :cond_62
    const/4 v4, 0x3

    goto :goto_85

    :sswitch_64
    const-string/jumbo v5, "orientation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto :goto_85

    :cond_6e
    const/4 v4, 0x2

    goto :goto_85

    :sswitch_70
    const-string v5, "display_unique_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto :goto_85

    :cond_79
    const/4 v4, 0x1

    goto :goto_85

    :sswitch_7b
    const-string v5, "display_device_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto :goto_85

    :cond_84
    move v4, v0

    :goto_85
    packed-switch v4, :pswitch_data_108

    .line 764
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-interface {p2, v1}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/FreeformPersistBoundsParams;->restore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 730
    :pswitch_92
    iput-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    goto :goto_d7

    .line 720
    :pswitch_95
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    goto :goto_d7

    .line 754
    :pswitch_9c
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 756
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDexStandAloneBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d7

    .line 747
    :pswitch_a8
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 749
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDexDualBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d7

    .line 744
    :pswitch_b4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDexWindowingMode:I

    goto :goto_d7

    .line 723
    :pswitch_bb
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 725
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_d7

    .line 734
    :pswitch_c7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    goto :goto_d7

    .line 717
    :pswitch_ce
    iput-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    goto :goto_d7

    .line 739
    :pswitch_d1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    :cond_d7
    :goto_d7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 775
    :cond_db
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    return-void

    :sswitch_data_e2
    .sparse-switch
        -0x64fdec7a -> :sswitch_7b
        -0x595e6ef4 -> :sswitch_70
        -0x55cd0a30 -> :sswitch_64
        -0x5272094b -> :sswitch_59
        -0x228fc308 -> :sswitch_4e
        -0x2a11050 -> :sswitch_43
        0x67f61c7 -> :sswitch_38
        0x2ca2e3d0 -> :sswitch_2c
        0x772fa04e -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_ce
        :pswitch_c7
        :pswitch_bb
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
        :pswitch_95
        :pswitch_92
    .end packed-switch
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_unique_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    const-string/jumbo v2, "windowing_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string/jumbo v2, "window_layout_affinity"

    .line 689
    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 693
    :cond_25
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "orientation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 707
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformPersistBoundsParams;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistableLaunchParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " displayUniqueId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " launchParamsAffinity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {p0}, Lcom/android/server/wm/FreeformPersistBoundsParams;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 804
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
