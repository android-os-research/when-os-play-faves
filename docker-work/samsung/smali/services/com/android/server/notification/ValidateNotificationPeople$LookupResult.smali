.class public Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupResult"
.end annotation


# static fields
.field public static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field public mAffinity:F

.field public final mExpireMillis:J

.field public mHasPhone:Z

.field public mPhoneLookupKey:Ljava/lang/String;

.field public mPhoneNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$misExpired(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 5

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v0, 0x0

    .line 641
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 643
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    return-void
.end method


# virtual methods
.method public getAffinity()F
    .registers 2

    .line 734
    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 737
    :cond_8
    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return p0
.end method

.method public getPhoneLookupKey()Ljava/lang/String;
    .registers 2

    .line 697
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 700
    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumbers()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final isExpired()Z
    .registers 5

    .line 726
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final isInvalid()Z
    .registers 3

    .line 730
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .registers 8

    .line 650
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const-string v0, "_id"

    .line 654
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_33

    .line 656
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 657
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact _ID is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_33
    const-string/jumbo v0, "invalid cursor: no _ID"

    .line 660
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    const-string/jumbo v0, "lookup"

    .line 664
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_65

    .line 666
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 667
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact LOOKUP_KEY is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 669
    :cond_65
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_71

    const-string/jumbo v0, "invalid cursor: no LOOKUP_KEY"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    const-string/jumbo v0, "starred"

    .line 673
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_ac

    .line 675
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_84

    move v0, v2

    goto :goto_85

    :cond_84
    move v0, v3

    :goto_85
    if-eqz v0, :cond_91

    .line 677
    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 679
    :cond_91
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_b8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact STARRED is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 681
    :cond_ac
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string/jumbo v0, "invalid cursor: no STARRED"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b8
    :goto_b8
    const-string/jumbo v0, "has_phone_number"

    .line 685
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e8

    .line 687
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_c9

    :cond_c8
    move v2, v3

    :goto_c9
    iput-boolean v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 688
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_f4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contact HAS_PHONE_NUMBER is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 690
    :cond_e8
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_f4

    const-string/jumbo p0, "invalid cursor: no HAS_PHONE_NUMBER"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    :goto_f4
    return-void
.end method

.method public mergePhoneNumber(Landroid/database/Cursor;)V
    .registers 5

    const-string v0, "data4"

    .line 705
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_14

    .line 708
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 710
    :cond_14
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "cursor data not found: no NORMALIZED_NUMBER"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    const-string v0, "data1"

    .line 713
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_31

    .line 715
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 717
    :cond_31
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "cursor data not found: no NUMBER"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    return-void
.end method
