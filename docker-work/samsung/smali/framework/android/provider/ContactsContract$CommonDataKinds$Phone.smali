.class public final Landroid/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_v2"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist ENTERPRISE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NORMALIZED_NUMBER:Ljava/lang/String; = "data4"

.field public static final whitelist NUMBER:Ljava/lang/String; = "data1"

.field public static final whitelist SEARCH_DISPLAY_NAME_KEY:Ljava/lang/String; = "search_display_name"

.field public static final whitelist SEARCH_PHONE_NUMBER_KEY:Ljava/lang/String; = "search_phone_number"

.field public static final whitelist SEM_TYPE_CONFERENCE:I = 0x3fd

.field public static final whitelist TYPE_ASSISTANT:I = 0x13

.field public static final whitelist TYPE_CALLBACK:I = 0x8

.field public static final whitelist TYPE_CAR:I = 0x9

.field public static final whitelist TYPE_COMPANY_MAIN:I = 0xa

.field public static final whitelist TYPE_FAX_HOME:I = 0x5

.field public static final whitelist TYPE_FAX_WORK:I = 0x4

.field public static final whitelist TYPE_HOME:I = 0x1

.field public static final whitelist TYPE_ISDN:I = 0xb

.field public static final whitelist TYPE_MAIN:I = 0xc

.field public static final whitelist TYPE_MMS:I = 0x14

.field public static final whitelist TYPE_MOBILE:I = 0x2

.field public static final whitelist TYPE_OTHER:I = 0x7

.field public static final whitelist TYPE_OTHER_FAX:I = 0xd

.field public static final whitelist TYPE_PAGER:I = 0x6

.field public static final whitelist TYPE_RADIO:I = 0xe

.field public static final whitelist TYPE_TELEX:I = 0xf

.field public static final whitelist TYPE_TTY_TDD:I = 0x10

.field public static final whitelist TYPE_WORK:I = 0x3

.field public static final whitelist TYPE_WORK_MOBILE:I = 0x11

.field public static final whitelist TYPE_WORK_PAGER:I = 0x12


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 6235
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 6252
    sget-object v2, Landroid/provider/ContactsContract$Data;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 6253
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 6266
    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 6280
    const-string v1, "filter_enterprise"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6357
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "labelArray"    # [Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 6398
    if-eqz p1, :cond_6

    const/16 v0, 0x13

    if-ne p1, v0, :cond_d

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6399
    return-object p2

    .line 6401
    :cond_d
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    .line 6402
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 6365
    sparse-switch p0, :sswitch_data_5c

    .line 6387
    const v0, 0x1040aec

    return v0

    .line 6386
    :sswitch_7
    const v0, 0x1040aeb

    return v0

    .line 6385
    :sswitch_b
    const v0, 0x1040af2

    return v0

    .line 6384
    :sswitch_f
    const v0, 0x1040ae7

    return v0

    .line 6383
    :sswitch_13
    const v0, 0x1040afc

    return v0

    .line 6382
    :sswitch_17
    const v0, 0x1040afb

    return v0

    .line 6381
    :sswitch_1b
    const v0, 0x1040af9

    return v0

    .line 6380
    :sswitch_1f
    const v0, 0x1040af8

    return v0

    .line 6379
    :sswitch_23
    const v0, 0x1040af7

    return v0

    .line 6378
    :sswitch_27
    const v0, 0x1040af5

    return v0

    .line 6377
    :sswitch_2b
    const v0, 0x1040af1

    return v0

    .line 6376
    :sswitch_2f
    const v0, 0x1040af0

    return v0

    .line 6375
    :sswitch_33
    const v0, 0x1040aea

    return v0

    .line 6374
    :sswitch_37
    const v0, 0x1040ae9

    return v0

    .line 6373
    :sswitch_3b
    const v0, 0x1040ae8

    return v0

    .line 6372
    :sswitch_3f
    const v0, 0x1040af4

    return v0

    .line 6371
    :sswitch_43
    const v0, 0x1040af6

    return v0

    .line 6370
    :sswitch_47
    const v0, 0x1040aed

    return v0

    .line 6369
    :sswitch_4b
    const v0, 0x1040aee

    return v0

    .line 6368
    :sswitch_4f
    const v0, 0x1040afa

    return v0

    .line 6367
    :sswitch_53
    const v0, 0x1040af3

    return v0

    .line 6366
    :sswitch_57
    const v0, 0x1040aef

    return v0

    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_57
        0x2 -> :sswitch_53
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_47
        0x6 -> :sswitch_43
        0x7 -> :sswitch_3f
        0x8 -> :sswitch_3b
        0x9 -> :sswitch_37
        0xa -> :sswitch_33
        0xb -> :sswitch_2f
        0xc -> :sswitch_2b
        0xd -> :sswitch_27
        0xe -> :sswitch_23
        0xf -> :sswitch_1f
        0x10 -> :sswitch_1b
        0x11 -> :sswitch_17
        0x12 -> :sswitch_13
        0x13 -> :sswitch_f
        0x14 -> :sswitch_b
        0x3fd -> :sswitch_7
    .end sparse-switch
.end method
