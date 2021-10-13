package ru.javawebinar.topjava.repository;

import ru.javawebinar.topjava.model.Meal;

import java.util.List;

public interface MealRepository {

    void add(Meal user);

    void delete(int id);

    void update(Meal user);

    Meal getById(int id);

    public List<Meal> getAll();



}
