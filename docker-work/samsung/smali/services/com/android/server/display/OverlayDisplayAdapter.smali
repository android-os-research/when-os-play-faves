.class public final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field public static final DISPLAY_SPLITTER:Ljava/lang/String; = ";"

.field public static final FLAG_SPLITTER:Ljava/lang/String; = ","

.field public static final MAX_HEIGHT:I = 0x1000

.field public static final MAX_WIDTH:I = 0x1000

.field public static final MIN_HEIGHT:I = 0x64

.field public static final MIN_WIDTH:I = 0x64

.field public static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field public static final MODE_SPLITTER:Ljava/lang/String; = "\\|"

.field public static final OVERLAY_DISPLAY_FLAG_OWN_CONTENT_ONLY:Ljava/lang/String; = "own_content_only"

.field public static final OVERLAY_DISPLAY_FLAG_SECURE:Ljava/lang/String; = "secure"

.field public static final OVERLAY_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:Ljava/lang/String; = "should_show_system_decorations"

.field public static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field public static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field public mCurrentOverlaySetting:Ljava/lang/String;

.field public final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUiHandler(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateOverlayDisplayDevices(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "([^,]+)(,[,_a-z]+)*"

    .line 130
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12

    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 144
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    const-string p1, ""

    .line 139
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static chooseOverlayGravity(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/16 p0, 0x53

    return p0

    :cond_c
    const/16 p0, 0x35

    return p0

    :cond_f
    const/16 p0, 0x55

    return p0

    :cond_12
    const/16 p0, 0x33

    return p0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 150
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_3b

    :cond_4b
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .line 161
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateOverlayDisplayDevices()V
    .registers 2

    .line 181
    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 183
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final updateOverlayDisplayDevicesLocked()V
    .registers 21

    move-object/from16 v8, p0

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, ""

    :cond_15
    const/4 v1, -0x1

    .line 195
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_3b

    const-string v2, "#"

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 197
    array-length v3, v2

    if-ne v3, v9, :cond_3b

    aget-object v3, v2, v11

    const-string v4, "dex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 198
    aget-object v0, v2, v12

    .line 199
    aget-object v1, v2, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3b
    move-object v13, v0

    move v14, v1

    .line 204
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    .line 207
    :cond_46
    iput-object v13, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 209
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v15, "OverlayDisplayAdapter"

    if-nez v0, :cond_72

    const-string v0, "Dismissing all overlay display devices."

    .line 210
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 212
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_5d

    .line 214
    :cond_6d
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_72
    const-string v0, ";"

    .line 218
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v6, v7

    move v0, v11

    move v5, v0

    :goto_7b
    if-ge v5, v6, :cond_1f8

    aget-object v1, v7, v5

    .line 219
    sget-object v2, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1d3

    const/4 v2, 0x4

    if-lt v0, v2, :cond_a4

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many overlay display devices specified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f8

    .line 225
    :cond_a4
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\\|"

    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_b8
    if-ge v11, v4, :cond_13b

    aget-object v9, v2, v11

    .line 229
    sget-object v10, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 230
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_125

    move-object/from16 v18, v2

    .line 232
    :try_start_ca
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xa

    invoke-static {v2, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_ca .. :try_end_d4} :catch_120

    move/from16 v17, v4

    const/4 v12, 0x2

    .line 233
    :try_start_d7
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0xa

    invoke-static {v4, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v12, 0x3

    .line 234
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0xa

    invoke-static {v10, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_ec} :catch_122

    const/16 v12, 0x64

    move/from16 v19, v5

    if-lt v2, v12, :cond_10b

    const/16 v5, 0x1000

    if-gt v2, v5, :cond_10b

    if-lt v4, v12, :cond_10b

    if-gt v4, v5, :cond_10b

    const/16 v5, 0x78

    if-lt v10, v5, :cond_10b

    const/16 v5, 0x280

    if-gt v10, v5, :cond_10b

    .line 239
    :try_start_102
    new-instance v5, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v5, v2, v4, v10}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 242
    :cond_10b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring out-of-range overlay display mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_102 .. :try_end_11f} :catch_12e

    goto :goto_12e

    :catch_120
    move/from16 v17, v4

    :catch_122
    move/from16 v19, v5

    goto :goto_12e

    :cond_125
    move-object/from16 v18, v2

    move/from16 v17, v4

    move/from16 v19, v5

    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    :catch_12e
    :goto_12e
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v17

    move-object/from16 v2, v18

    move/from16 v5, v19

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    goto/16 :goto_b8

    :cond_13b
    move/from16 v19, v5

    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1cb

    add-int/lit8 v9, v0, 0x1

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040455

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/Object;

    .line 254
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    .line 252
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v9}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v4

    .line 256
    invoke-static {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    move-result-object v5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing overlay display device #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_EMULATOR:Z

    if-eqz v0, :cond_1b5

    .line 264
    iget-object v12, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v0, v1

    move-object v10, v1

    move-object/from16 v1, p0

    move/from16 v16, v19

    move/from16 v17, v6

    move v6, v9

    move-object/from16 v18, v7

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;II)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c9

    :cond_1b5
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v19

    .line 268
    iget-object v7, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;ILcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c9
    move v0, v9

    goto :goto_1ed

    :cond_1cb
    move/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v16, v19

    const/4 v11, 0x0

    goto :goto_1d9

    :cond_1d3
    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 273
    :goto_1d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed overlay display devices setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1ed
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    goto/16 :goto_7b

    :cond_1f8
    :goto_1f8
    return-void
.end method
