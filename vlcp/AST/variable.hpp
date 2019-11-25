// Vorotynsky's lambda calculus interpreter 
// Copyright (C) 2019  Vorotynsky Maxim 
//  
// This program is free software: you can redistribute it and/or modify 
// it under the terms of the GNU General Public License as published by 
// the Free Software Foundation, either version 3 of the License, or 
// (at your option) any later version. 
//  
// This program is distributed in the hope that it will be useful, 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
// GNU General Public License for more details. 
//  
// You should have received a copy of the GNU General Public License 
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#pragma once

#include "lambda.hpp"

#include <string>

class Variable : public LambdaExpression 
{
private:
    const std::string name;

protected:
    bool Equals(const LambdaExpression &other) const override;

public:
    Variable(const std::string &name);

    virtual ~Variable() override;

    virtual const std::string &getName() const noexcept;
};