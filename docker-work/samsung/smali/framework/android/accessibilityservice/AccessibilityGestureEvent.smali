.class public final Landroid/accessibilityservice/AccessibilityGestureEvent;
.super Ljava/lang/Object;
.source "AccessibilityGestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityGestureEvent$GestureId;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayId:I

.field private final blacklist mGestureId:I

.field private blacklist mMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 312
    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityGestureEvent$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "gestureId"    # I
    .param p2, "displayId"    # I

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 170
    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "gestureId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p3, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 161
    iput p1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    .line 162
    iput p2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    .line 163
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 176
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/view/MotionEvent;>;"
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    .line 177
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/accessibilityservice/AccessibilityGestureEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist gestureIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I

    .line 235
    packed-switch p0, :pswitch_data_98

    .line 290
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_8
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    .line 248
    :pswitch_b
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP_AND_HOLD"

    return-object v0

    .line 241
    :pswitch_e
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP_AND_HOLD"

    return-object v0

    .line 258
    :pswitch_11
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 251
    :pswitch_14
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 244
    :pswitch_17
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 259
    :pswitch_1a
    const-string v0, "GESTURE_4_FINGER_TRIPLE_TAP"

    return-object v0

    .line 256
    :pswitch_1d
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP"

    return-object v0

    .line 255
    :pswitch_20
    const-string v0, "GESTURE_4_FINGER_SINGLE_TAP"

    return-object v0

    .line 288
    :pswitch_23
    const-string v0, "GESTURE_4_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 287
    :pswitch_26
    const-string v0, "GESTURE_4_FINGER_SWIPE_LEFT"

    return-object v0

    .line 286
    :pswitch_29
    const-string v0, "GESTURE_4_FINGER_SWIPE_DOWN"

    return-object v0

    .line 289
    :pswitch_2c
    const-string v0, "GESTURE_4_FINGER_SWIPE_UP"

    return-object v0

    .line 284
    :pswitch_2f
    const-string v0, "GESTURE_3_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 283
    :pswitch_32
    const-string v0, "GESTURE_3_FINGER_SWIPE_LEFT"

    return-object v0

    .line 282
    :pswitch_35
    const-string v0, "GESTURE_3_FINGER_SWIPE_DOWN"

    return-object v0

    .line 285
    :pswitch_38
    const-string v0, "GESTURE_3_FINGER_SWIPE_UP"

    return-object v0

    .line 280
    :pswitch_3b
    const-string v0, "GESTURE_2_FINGER_SWIPE_RIGHT"

    return-object v0

    .line 279
    :pswitch_3e
    const-string v0, "GESTURE_2_FINGER_SWIPE_LEFT"

    return-object v0

    .line 278
    :pswitch_41
    const-string v0, "GESTURE_2_FINGER_SWIPE_DOWN"

    return-object v0

    .line 281
    :pswitch_44
    const-string v0, "GESTURE_2_FINGER_SWIPE_UP"

    return-object v0

    .line 252
    :pswitch_47
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP"

    return-object v0

    .line 249
    :pswitch_4a
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP"

    return-object v0

    .line 246
    :pswitch_4d
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP"

    return-object v0

    .line 245
    :pswitch_50
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP"

    return-object v0

    .line 242
    :pswitch_53
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP"

    return-object v0

    .line 239
    :pswitch_56
    const-string v0, "GESTURE_2_FINGER_SINGLE_TAP"

    return-object v0

    .line 261
    :pswitch_59
    const-string v0, "GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object v0

    .line 260
    :pswitch_5c
    const-string v0, "GESTURE_DOUBLE_TAP"

    return-object v0

    .line 265
    :pswitch_5f
    const-string v0, "GESTURE_SWIPE_DOWN_AND_RIGHT"

    return-object v0

    .line 263
    :pswitch_62
    const-string v0, "GESTURE_SWIPE_DOWN_AND_LEFT"

    return-object v0

    .line 277
    :pswitch_65
    const-string v0, "GESTURE_SWIPE_UP_AND_RIGHT"

    return-object v0

    .line 275
    :pswitch_68
    const-string v0, "GESTURE_SWIPE_UP_AND_LEFT"

    return-object v0

    .line 273
    :pswitch_6b
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_DOWN"

    return-object v0

    .line 271
    :pswitch_6e
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_UP"

    return-object v0

    .line 269
    :pswitch_71
    const-string v0, "GESTURE_SWIPE_LEFT_AND_DOWN"

    return-object v0

    .line 267
    :pswitch_74
    const-string v0, "GESTURE_SWIPE_LEFT_AND_UP"

    return-object v0

    .line 264
    :pswitch_77
    const-string v0, "GESTURE_SWIPE_DOWN_AND_UP"

    return-object v0

    .line 276
    :pswitch_7a
    const-string v0, "GESTURE_SWIPE_UP_AND_DOWN"

    return-object v0

    .line 272
    :pswitch_7d
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_LEFT"

    return-object v0

    .line 268
    :pswitch_80
    const-string v0, "GESTURE_SWIPE_LEFT_AND_RIGHT"

    return-object v0

    .line 270
    :pswitch_83
    const-string v0, "GESTURE_SWIPE_RIGHT"

    return-object v0

    .line 266
    :pswitch_86
    const-string v0, "GESTURE_SWIPE_LEFT"

    return-object v0

    .line 262
    :pswitch_89
    const-string v0, "GESTURE_SWIPE_DOWN"

    return-object v0

    .line 274
    :pswitch_8c
    const-string v0, "GESTURE_SWIPE_UP"

    return-object v0

    .line 236
    :pswitch_8f
    const-string v0, "GESTURE_UNKNOWN"

    return-object v0

    .line 237
    :pswitch_92
    const-string v0, "GESTURE_PASSTHROUGH"

    return-object v0

    .line 238
    :pswitch_95
    const-string v0, "GESTURE_TOUCH_EXPLORATION"

    return-object v0

    :pswitch_data_98
    .packed-switch -0x2
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return v0
.end method

.method public whitelist getGestureId()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    return v0
.end method

.method public whitelist getMotionEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityGestureEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "gestureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, "displayId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "Motion Events: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 218
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_58

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    .line 223
    :cond_58
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v3    # "action":Ljava/lang/String;
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 226
    .end local v2    # "i":I
    :cond_60
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 304
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mMotionEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 307
    return-void
.end method
